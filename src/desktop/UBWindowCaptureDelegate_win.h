/*
 * Copyright (C) 2015-2022 Département de l'Instruction Publique (DIP-SEM)
 *
 * Copyright (C) 2013 Open Education Foundation
 *
 * Copyright (C) 2010-2013 Groupement d'Intérêt Public pour
 * l'Education Numérique en Afrique (GIP ENA)
 *
 * This file is part of OpenBoard.
 *
 * OpenBoard is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3 of the License,
 * with a specific linking exception for the OpenSSL project's
 * "OpenSSL" library (or with modified versions of it that use the
 * same license as the "OpenSSL" library).
 *
 * OpenBoard is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with OpenBoard. If not, see <http://www.gnu.org/licenses/>.
 */




#ifndef UBWINDOWCAPTUREDELEGATE_H_
#define UBWINDOWCAPTUREDELEGATE_H_

#include <QtGui>

class UBWindowCaptureDelegate : public QObject
{
        Q_OBJECT;

    public:
        UBWindowCaptureDelegate(QObject *parent = 0);
        ~UBWindowCaptureDelegate();

        int execute();
        const QPixmap getCapturedWindow();

    private:
        bool eventFilter(QObject *target, QEvent *event);
        void processPos(QPoint pPoint);
        void drawSelectionRect();

        bool mIsCapturing;
        bool mCancel;
        QPoint mLastPoint;
        HWND mCurrentWindow;
        QPixmap mCapturedPixmap;

};
#endif /* UBWINDOWCAPTUREDELEGATE_H_ */
