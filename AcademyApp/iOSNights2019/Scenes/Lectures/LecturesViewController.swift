//
//  LecturesViewController.swift
//  iOSNights2019
//
//  Created by Jakub Vodak on 28/03/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

class LecturesViewController: UIViewController {
    @IBOutlet private var tableView: UITableView!

    private let cellHeigth: CGFloat = 140

    private let lectures: [Lecture] = [
        Lecture(identifier: "1", name: "Swift I")
    ]

    // MARK: - Object Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.setNavigationBarHidden(true, animated: true)
    }
}

// MARK: - Private methods
private extension LecturesViewController {
    func setupUI() {
        tableView.register(LectureCell.nib, forCellReuseIdentifier: LectureCell.reuseIdentifer)

        tableView.dataSource = self
        tableView.delegate = self
    }

    func showDetail(for lecture: Lecture) {
        let storyboard = UIStoryboard(name: "LectureViewController", bundle: nil)

        if let viewController = storyboard.instantiateInitialViewController() as? LectureViewController {
            viewController.hidesBottomBarWhenPushed = true
            viewController.lecture = lecture
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

// MARK: - UITableViewDataSource
extension LecturesViewController: UITableViewDataSource {
    func numberOfSections(in _: UITableView) -> Int {
        return 1
    }

    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return lectures.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(of: LectureCell.self, at: indexPath)

        let lecture = lectures[indexPath.row]
        let input = LectureCell.Input(title: lecture.name.uppercased(), imageUrl: lecture.imageUrl)

        cell.configure(with: input)

        return cell
    }
}

// MARK: - UITableViewDelegate
extension LecturesViewController: UITableViewDelegate {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        return cellHeigth
    }

    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        let lecture = lectures[indexPath.row]

        showDetail(for: lecture)
    }

    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        // TODO: Dequeue
        return nil
    }
}
