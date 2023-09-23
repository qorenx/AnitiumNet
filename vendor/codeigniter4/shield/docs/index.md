# Shield Documentation

## What is Shield?

Shield is the official authentication and authorization framework for CodeIgniter 4. While
it does provide a base set of tools that are commonly used in websites, it is
designed to be flexible and easily customizable.

### Primary Goals

The primary goals for Shield are:

1. It must be very flexible and allow developers to extend/override almost any part of it.
2. It must have security at its core. It is an auth lib after all.
3. To cover many auth needs right out of the box, but be simple to add additional functionality to.

### Important Features

* Session-based authentication (traditional ID/Password with Remember-me)
* Stateless authentication using Personal Access Tokens
* Optional Email verification on account registration
* Optional Email-based Two-Factor Authentication after login
* Magic Link Login when a user forgets their password
* Flexible Groups-based access control (think Roles, but more flexible)
* Users can be granted additional Permissions

### License

Shield is licensed under the MIT License - see the [LICENSE](https://github.com/codeigniter4/shield/blob/develop/LICENSE) file for details.

### Acknowledgements

Every open-source project depends on it's contributors to be a success. The following users have
contributed in one manner or another in making Shield:

<a href="https://github.com/codeigniter4/shield/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=codeigniter4/shield" alt="Contributors">
</a>

Made with [contrib.rocks](https://contrib.rocks).

The following articles/sites have been fundamental in shaping the security and best practices used
within this library, in no particular order:

- [Google Cloud: 13 best practices for user account, authentication, and password management, 2021 edition](https://cloud.google.com/blog/products/identity-security/account-authentication-and-password-management-best-practices)
- [NIST Digital Identity Guidelines](https://pages.nist.gov/800-63-3/sp800-63b.html)
- [Implementing Secure User Authentication in PHP Applications with Long-Term Persistence (Login with "Remember Me" Cookies) ](https://paragonie.com/blog/2015/04/secure-authentication-php-with-long-term-persistence)
- [Password Storage - OWASP Cheat Sheet Series](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html)
