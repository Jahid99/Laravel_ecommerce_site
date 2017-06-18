<?php

namespace Illuminate\Foundation\Auth;

use Session;

trait RedirectsUsers
{
    /**
     * Get the post register / login redirect path.
     *
     * @return string
     */
    public function redirectPath()
    {
        if (method_exists($this, 'redirectTo')) {
            return $this->redirectTo();
        }

        return Session::get('backUrl') ? Session::get('backUrl') : $this->redirectTo;
    }
}
