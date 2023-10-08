<?php

declare(strict_types=1);

namespace CodeIgniter\Shield\Validation;

use CodeIgniter\Shield\Authentication\Passwords;
use CodeIgniter\Shield\Config\Auth;

class ValidationRules
{
    protected Auth $config;

    /**
     * Auth Table names
     */
    protected array $tables;

    public function __construct()
    {
        /** @var Auth $authConfig */
        $authConfig = config('Auth');

        $this->config = $authConfig;
        $this->tables = $this->config->tables;
    }

    public function getRegistrationRules(): array
    {
        helper('setting');

        $setting = setting('Validation.registration');
        if ($setting !== null) {
            return $setting;
        }

        $usernameRules            = $this->config->usernameValidationRules;
        $usernameRules['rules'][] = sprintf(
            'is_unique[%s.username]',
            $this->tables['users']
        );

        $emailRules            = $this->config->emailValidationRules;
        $emailRules['rules'][] = sprintf(
            'is_unique[%s.secret]',
            $this->tables['identities']
        );

        $passwordRules            = $this->getPasswordRules();
        $passwordRules['rules'][] = 'strong_password[]';

        return [
            'username'         => $usernameRules,
            'email'            => $emailRules,
            'password'         => $passwordRules,
            'password_confirm' => $this->getPasswordConfirmRules(),
        ];
    }

    public function getLoginRules(): array
    {
        helper('setting');

        return setting('Validation.login') ?? [
            // 'username' => $this->config->usernameValidationRules,
            'email'    => $this->config->emailValidationRules,
            'password' => $this->getPasswordRules(),
        ];
    }

    public function getPasswordRules(): array
    {
        return [
            'label'  => 'Auth.password',
            'rules'  => ['required', Passwords::getMaxLengthRule()],
            'errors' => [
                'max_byte' => 'Auth.errorPasswordTooLongBytes',
            ],
        ];
    }

    public function getPasswordConfirmRules(): array
    {
        return [
            'label' => 'Auth.passwordConfirm',
            'rules' => 'required|matches[password]',
        ];
    }
}
