<?php
 declare(strict_types=1);  

namespace App\Controllers;

use App\Controllers\BaseController;

class PasswordReset extends BaseController
{
    protected $helpers = ['setting', 'url', 'form'];


    public function index()
    {

            $result = auth()->check([
                'email'    => auth()->user()->email,
                'password' => $this->request->getPost('old_password'),
            ]);

            if (!$result->isOK()) {
                return redirect()->to(config('Auth')->forcePasswordResetRedirect())->withInput()->with('error', 'Auth.oldPasswordWrong');
            }

            // Success!

            $users = auth()->getProvider();

            $user = auth()->user()->fill([
                'password' => $this->request->getPost('password')
            ]);

            $users->save($user);

            // Remove force password reset flag
            auth()->user()->undoForcePasswordReset();

            // logout user and print login via new password
            auth()->logout();
            return redirect()->to(config('Auth')->logoutRedirect())->with('message', lang('Auth.changePasswordSuccess'));
    }

    /**
     * Returns the rules that should be used for validation.
     *
     * @return array<string, array<string, array<string>|string>>
     * @phpstan-return array<string, array<string, string|list<string>>>
     */
    protected function getValidationRules(): array
    {
        return setting('Validation.changePassword') ?? [
            'password' => [
                'label' => 'Auth.password',
                'rules' => 'required|strong_password',
            ],
            'password_confirm' => [
                'label' => 'Auth.passwordConfirm',
                'rules' => 'required|matches[password]',
            ],
        ];
    }
}
