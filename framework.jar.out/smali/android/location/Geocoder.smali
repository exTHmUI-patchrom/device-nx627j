.class public final Landroid/location/Geocoder;
.super Ljava/lang/Object;
.source "Geocoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Geocoder"


# instance fields
.field private mParams:Landroid/location/GeocoderParams;

.field private mService:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-eqz p2, :cond_0

    .line 83
    new-instance v0, Landroid/location/GeocoderParams;

    invoke-direct {v0, p1, p2}, Landroid/location/GeocoderParams;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    .line 84
    const-string/jumbo v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 85
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    iput-object v1, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    .line 86
    return-void

    .line 81
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isPresent()Z
    .locals 5

    .line 60
    const-string/jumbo v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 61
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    .line 63
    .local v1, "lm":Landroid/location/ILocationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/location/ILocationManager;->geocoderIsPresent()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 64
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Geocoder"

    const-string/jumbo v4, "isPresent: got RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method public getFromLocation(DDI)Ljava/util/List;
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_2

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_2

    .line 128
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p3, v0

    if-gtz v0, :cond_1

    .line 132
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v1, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    iget-object v7, p0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v8, v0

    invoke-interface/range {v1 .. v8}, Landroid/location/ILocationManager;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "ex":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 138
    return-object v0

    .line 136
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v1    # "ex":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Geocoder"

    const-string v2, "getFromLocation: got RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const/4 v1, 0x0

    return-object v1

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "longitude == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "latitude == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    .locals 16
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 170
    if-eqz p1, :cond_1

    .line 174
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v2, v1, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    iget-object v13, v1, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    move-object/from16 v3, p1

    move/from16 v12, p2

    move-object v14, v0

    invoke-interface/range {v2 .. v14}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "ex":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 180
    return-object v0

    .line 178
    :cond_0
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v2    # "ex":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Geocoder"

    const-string v3, "getFromLocationName: got RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v2, 0x0

    return-object v2

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "locationName == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    .locals 19
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .param p3, "lowerLeftLatitude"    # D
    .param p5, "lowerLeftLongitude"    # D
    .param p7, "upperRightLatitude"    # D
    .param p9, "upperRightLongitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IDDDD)",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v14, p3

    move-wide/from16 v12, p5

    move-wide/from16 v10, p7

    .line 226
    move-wide/from16 v8, p9

    if-eqz p1, :cond_5

    .line 229
    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v14, v2

    if-ltz v0, :cond_4

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v0, v14, v4

    if-gtz v0, :cond_4

    .line 233
    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v12, v6

    if-ltz v0, :cond_3

    const-wide v16, 0x4066800000000000L    # 180.0

    cmpl-double v0, v12, v16

    if-gtz v0, :cond_3

    .line 237
    cmpg-double v0, v10, v2

    if-ltz v0, :cond_2

    cmpl-double v0, v10, v4

    if-gtz v0, :cond_2

    .line 241
    cmpg-double v0, v8, v6

    if-ltz v0, :cond_1

    cmpl-double v0, v8, v16

    if-gtz v0, :cond_1

    .line 246
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Address;>;"
    iget-object v2, v1, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    iget-object v6, v1, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    move-object/from16 v3, p1

    move-wide v4, v14

    move-object/from16 v16, v6

    move-wide v6, v12

    move-wide v8, v10

    move-wide/from16 v10, p9

    move/from16 v12, p2

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-interface/range {v2 .. v14}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "ex":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 253
    return-object v0

    .line 251
    :cond_0
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Address;>;"
    .end local v2    # "ex":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Geocoder"

    const-string v3, "getFromLocationName: got RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    const/4 v2, 0x0

    return-object v2

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "upperRightLongitude == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_2
    move-wide v3, v8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upperRightLatitude == "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, p7

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_3
    move-wide v3, v8

    move-wide v5, v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lowerLeftLongitude == "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p5

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_4
    move-wide v3, v8

    move-wide v5, v10

    move-wide v7, v12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "lowerLeftLatitude == "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p3

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_5
    move-wide v3, v8

    move-wide v5, v10

    move-wide v7, v12

    move-wide v9, v14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "locationName == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
