<?php

class HomepagePresenter extends BasePresenter {

	/** @var Users */
    private $users;
	
	protected function startup() {
        parent::startup();
        $this->users = $this->context->users;
    }

	public function renderDefault() {
		$all_users = $this->users->findAll()->orderBy('id')->fetchAll();
		$this->template->all_users = $all_users;
	}

}