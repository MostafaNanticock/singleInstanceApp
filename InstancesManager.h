#ifndef INSTANCESMANAGER_H
#define INSTANCESMANAGER_H

#include <QObject>

class InstancesManager : public QObject
{
    Q_OBJECT
public:
    explicit InstancesManager(QObject *parent = nullptr);

signals:
    void openMainWindow();

};

#endif // INSTANCESMANAGER_H
