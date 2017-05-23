/**
 * GraphHopper Directions API
 * You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

#ifndef _SWG_SWGIsochroneApi_H_
#define _SWG_SWGIsochroneApi_H_

#include "SWGHttpRequest.h"

#include <QString>
#include "SWGGHError.h"
#include "SWGIsochroneResponse.h"

#include <QObject>

namespace Swagger {

class SWGIsochroneApi: public QObject {
    Q_OBJECT

public:
    SWGIsochroneApi();
    SWGIsochroneApi(QString host, QString basePath);
    ~SWGIsochroneApi();

    QString host;
    QString basePath;

    void isochroneGet(QString* point, QString* key, qint32 time_limit, qint32 distance_limit, QString* vehicle, qint32 buckets, bool reverse_flow);
    
private:
    void isochroneGetCallback (HttpRequestWorker * worker);
    
signals:
    void isochroneGetSignal(SWGIsochroneResponse* summary);
    
};
}
#endif
