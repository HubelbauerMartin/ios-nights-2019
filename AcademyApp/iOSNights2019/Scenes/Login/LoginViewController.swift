//
//  LoginViewController.swift
//  iOSNights2019
//
//  Created by Jan Kaltoun on 14/02/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - Constants
    private let doneButtonBottomPaddingKeyboardUp: CGFloat = 15
    private let doneButtonBottomPaddingKeyboardDown: CGFloat = 47

    // MARK: - UI
    @IBOutlet private var emailTextField: UITextField!
    @IBOutlet private var passwordTextField: TextField!
    @IBOutlet private var doneBottomButtonConstraint: NSLayoutConstraint!
    @IBOutlet private var doneButton: DoneButton!
    @IBOutlet private var revealPasswordButton: RevealButton!

    // MARK: - Private properties
    private var email: String {
        return emailTextField.text ?? ""
    }

    private var password: String {
        return passwordTextField.text ?? ""
    }

    private var isFormValid: Bool {
        return email.isValidEmail && password.isValidPassword
    }

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        debugPrint(EnvironmentConfiguration.current)
        setupUI()
    }

    deinit {
        print("Bye")
    }
}

// MARK: - IBActions
private extension LoginViewController {
    @IBAction func didPressDoneButton(_: Any) {
        RootCoordinator.shared?.didLogIn()
    }

    @IBAction func didPressRevealButton(_: Any) {
        print("Reveal password button is pressed")
        passwordTextField.isSecureTextEntry.toggle()
        revealPasswordButton.setState(passwordTextField.isSecureTextEntry ? .show : .hide)
    }
}

// MARK: - Private
private extension LoginViewController {
    func setupUI() {
        let emailPlacehodler = NSLocalizedString("Email", comment: "")
        let passwordPlacehodler = NSLocalizedString("Password", comment: "")

        let attrs = [
            NSAttributedString.Key.foregroundColor: UIColor.appGrayText,
            NSAttributedString.Key.kern: 1
        ] as [NSAttributedString.Key: Any]
        emailTextField.attributedPlaceholder = NSAttributedString(string: emailPlacehodler, attributes: attrs)
        passwordTextField.attributedPlaceholder = NSAttributedString(string: passwordPlacehodler, attributes: attrs)

        emailTextField.delegate = self
        passwordTextField.delegate = self

        emailTextField.returnKeyType = .next
        passwordTextField.returnKeyType = .done

        passwordTextField.isSecureTextEntry = true

        emailTextField.addTarget(self, action: #selector(didChangeInput),
                                 for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(didChangeInput),
                                    for: .editingChanged)

        // Gestures
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTapOnView))
        view.addGestureRecognizer(tap)

        registerKeyboardListeners()

        // Done button
        doneButton.isEnabled = false

        // Reveal button
        revealPasswordButton.isHidden = true
        revealPasswordButton.setState(.show)
    }

    @objc func didTapOnView() {
        print("Did tap on view")
//        emailTextField.resignFirstResponder()
//        passwordTextField.resignFirstResponder()
        view.endEditing(true)
    }

    func registerKeyboardListeners() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc func keyboardWillShow(notification: Notification) {
        guard let keyboardSize = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {
            return
        }
        doneBottomButtonConstraint.constant = keyboardSize.height + doneButtonBottomPaddingKeyboardUp - view.safeAreaInsets.bottom
        view.layoutIfNeeded()
    }

    @objc func keyboardWillHide() {
        doneBottomButtonConstraint.constant = doneButtonBottomPaddingKeyboardDown
        view.layoutIfNeeded()
    }

    @objc func didChangeInput() {
        revealPasswordButton.isHidden = password.isEmpty
        doneButton.isEnabled = isFormValid
    }
}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            passwordTextField.resignFirstResponder()
        }
        return true
    }
}
