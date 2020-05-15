.class public Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils$Consts;
    }
.end annotation


# static fields
.field private static final NEO_CHARGER_PATH:Ljava/lang/String; = "/sys/class/power_supply/neo-charger/present"

.field private static final PATH_CAPACITY_PERCENT:Ljava/lang/String; = "/sys/class/power_supply/battery/capacity"

.field private static final PATH_FULL_CAPACITY:Ljava/lang/String; = "/sys/class/power_supply/battery/charge_full_design"

.field private static final PATH_NEO_CURRENT_FULL_CAPACITY:Ljava/lang/String; = "/sys/class/power_supply/neo-battery/charge_full"

.field private static final PATH_OLD_NEO_CURRENT_FULL_CAPACITY:Ljava/lang/String; = "/sys/class/power_supply/bms/charge_full"

.field private static final PATH_REAL_TYPE:Ljava/lang/String; = "/sys/class/power_supply/usb/real_type"

.field private static final PATH_USB_TYPE:Ljava/lang/String; = "/sys/class/power_supply/usb/type"

.field private static final SUPPORT_NEO_CHG:Ljava/lang/String; = "persist.sys.support.neo_charger"

.field private static final TAG:Ljava/lang/String; = "DeviceInfoUtils"


# instance fields
.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->mContext:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->mBatteryManager:Landroid/os/BatteryManager;

    .line 47
    return-void
.end method

.method private getCountrySim()Ljava/lang/String;
    .locals 3

    .line 226
    const-string/jumbo v0, "unKnow"

    .line 228
    .local v0, "country":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 229
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const-string/jumbo v2, "unKnow"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 235
    .end local v1    # "manager":Landroid/telephony/TelephonyManager;
    :cond_0
    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private static getIpFromNetworkInterface()Ljava/lang/String;
    .locals 6

    .line 307
    const-string/jumbo v0, "unKnow"

    .line 309
    .local v0, "LocalIpAddress":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 309
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 311
    .local v2, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 311
    .local v3, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 312
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 315
    .local v4, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_0

    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    .line 316
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 318
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    goto :goto_1

    .line 319
    .end local v2    # "intf":Ljava/net/NetworkInterface;
    .end local v3    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_1
    goto :goto_0

    .line 322
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_2
    goto :goto_2

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method private getIpFromWifi()Ljava/lang/String;
    .locals 5

    .line 283
    const-string/jumbo v0, "unKnow"

    .line 285
    .local v0, "ipAddress":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 286
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 287
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    .line 289
    .local v3, "ip":I
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->int2Ip(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 293
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "ip":I
    :cond_0
    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private int2Ip(I)Ljava/lang/String;
    .locals 2
    .param p1, "ip"    # I

    .line 298
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 299
    .local v0, "sb":Ljava/lang/StringBuffer;
    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isWifi()Z
    .locals 5

    .line 260
    const/4 v0, 0x1

    move v1, v0

    .line 262
    .local v1, "isWifi":Z
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 263
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 264
    .local v2, "connectManager":Landroid/net/ConnectivityManager;
    if-nez v2, :cond_0

    .line 265
    const/4 v0, 0x1

    .line 278
    .end local v2    # "connectManager":Landroid/net/ConnectivityManager;
    :goto_0
    move v1, v0

    goto :goto_1

    .line 267
    .restart local v2    # "connectManager":Landroid/net/ConnectivityManager;
    :cond_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 268
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    .line 269
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 270
    const/4 v0, 0x1

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    .line 272
    const/4 v0, 0x0

    .end local v1    # "isWifi":Z
    .end local v2    # "connectManager":Landroid/net/ConnectivityManager;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .local v0, "isWifi":Z
    goto :goto_0

    .line 278
    .end local v0    # "isWifi":Z
    .restart local v1    # "isWifi":Z
    :cond_2
    :goto_1
    goto :goto_2

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return v1
.end method

.method private readNodeInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v1, "-1"

    .line 104
    .local v1, "info":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 105
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 110
    nop

    .line 111
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 115
    :cond_0
    :goto_0
    goto :goto_1

    .line 109
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 106
    :catch_1
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 111
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 117
    :goto_1
    return-object v1

    .line 109
    :goto_2
    nop

    .line 110
    if-eqz v0, :cond_1

    .line 111
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 113
    :catch_2
    move-exception v3

    .line 114
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 115
    :cond_1
    :goto_3
    throw v2
.end method


# virtual methods
.method public getAccessType()Ljava/lang/String;
    .locals 5

    .line 340
    const-string/jumbo v0, "unKnow"

    .line 342
    .local v0, "type":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 343
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 344
    .local v1, "connectManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 345
    const-string/jumbo v2, "unKnow"

    move-object v0, v2

    goto/16 :goto_1

    .line 347
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 348
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    .line 349
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 350
    const-string v3, "WLAN"

    move-object v0, v3

    goto/16 :goto_1

    .line 351
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_2

    .line 352
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 353
    .local v3, "subType":I
    packed-switch v3, :pswitch_data_0

    .line 353
    .end local v3    # "subType":I
    :pswitch_0
    goto :goto_0

    .line 396
    .restart local v3    # "subType":I
    :pswitch_1
    const-string v4, "HSPAP"

    move-object v0, v4

    .line 397
    goto :goto_0

    .line 376
    :pswitch_2
    const-string v4, "EHRPD"

    move-object v0, v4

    .line 377
    goto :goto_0

    .line 408
    :pswitch_3
    const-string v4, "LTE"

    move-object v0, v4

    .line 409
    goto :goto_0

    .line 388
    :pswitch_4
    const-string v4, "EVDO_B"

    move-object v0, v4

    .line 389
    goto :goto_0

    .line 356
    :pswitch_5
    const-string v4, "IDEN"

    move-object v0, v4

    .line 357
    goto :goto_0

    .line 400
    :pswitch_6
    const-string v4, "HSUPA"

    move-object v0, v4

    .line 401
    goto :goto_0

    .line 392
    :pswitch_7
    const-string v4, "HSDPA"

    move-object v0, v4

    .line 393
    goto :goto_0

    .line 360
    :pswitch_8
    const-string v4, "RTT"

    move-object v0, v4

    .line 361
    goto :goto_0

    .line 384
    :pswitch_9
    const-string v4, "EVDO_A"

    move-object v0, v4

    .line 385
    goto :goto_0

    .line 380
    :pswitch_a
    const-string v4, "EVDO_0"

    move-object v0, v4

    .line 381
    goto :goto_0

    .line 364
    :pswitch_b
    const-string v4, "CDMA"

    move-object v0, v4

    .line 365
    goto :goto_0

    .line 404
    :pswitch_c
    const-string v4, "UMTS"

    move-object v0, v4

    .line 405
    goto :goto_0

    .line 368
    :pswitch_d
    const-string v4, "EDGE"

    move-object v0, v4

    .line 369
    goto :goto_0

    .line 372
    :pswitch_e
    const-string v4, "GPRS"

    move-object v0, v4

    .line 373
    goto :goto_0

    .line 412
    :pswitch_f
    const-string/jumbo v4, "unKnow"

    move-object v0, v4

    .line 415
    .end local v3    # "subType":I
    :goto_0
    goto :goto_1

    .line 416
    :cond_2
    const-string/jumbo v3, "unKnow"

    move-object v0, v3

    goto :goto_1

    .line 419
    :cond_3
    const-string/jumbo v3, "unKnow"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 424
    .end local v1    # "connectManager":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :goto_1
    goto :goto_2

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 425
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBasebandVersion()Ljava/lang/String;
    .locals 2

    .line 69
    const-string v0, "gsm.version.baseband"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryCapacity()I
    .locals 1

    .line 85
    const-string v0, "/sys/class/power_supply/battery/charge_full_design"

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getBatteryLevel()I
    .locals 3

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "mBatteryLevel":I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->mBatteryManager:Landroid/os/BatteryManager;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 81
    :cond_0
    return v0
.end method

.method public getBuildVersion()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 3

    .line 429
    const-string/jumbo v0, "unKnow"

    .line 431
    .local v0, "carrier":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 432
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 433
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    const-string/jumbo v2, "unKnow"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 438
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    goto :goto_0

    .line 436
    :catch_0
    move-exception v1

    .line 437
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 439
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 2

    .line 215
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getCountrySim()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "country":Ljava/lang/String;
    const-string/jumbo v1, "unKnow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const-string/jumbo v0, "unKnow"

    .line 222
    :cond_0
    return-object v0
.end method

.method public getCpu()Ljava/lang/String;
    .locals 5

    .line 161
    const-string/jumbo v0, "unKnow"

    .line 162
    .local v0, "processor":Ljava/lang/String;
    const/4 v1, 0x0

    .line 164
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 165
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "text":Ljava/lang/String;
    const-string v3, ":\\s+"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "array":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 167
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "array":[Ljava/lang/String;
    goto :goto_0

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 170
    :catch_1
    move-exception v2

    .line 171
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 171
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 168
    :catch_2
    move-exception v2

    .line 169
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 174
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 176
    :goto_1
    if-eqz v1, :cond_0

    .line 178
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 181
    goto :goto_2

    .line 179
    :catch_3
    move-exception v2

    .line 180
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 183
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v0
.end method

.method public getDeviceBoard()Ljava/lang/String;
    .locals 5

    .line 187
    const-string/jumbo v0, "unKnow"

    .line 188
    .local v0, "hardware":Ljava/lang/String;
    const/4 v1, 0x0

    .line 190
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 191
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_1

    .line 192
    const-string v2, "Hardware"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const-string v2, ":\\s+"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "array":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 195
    goto :goto_0

    .line 200
    .end local v2    # "array":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 201
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 198
    :catch_1
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 202
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_0
    nop

    .line 204
    :goto_1
    if-eqz v1, :cond_2

    .line 206
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 209
    goto :goto_2

    .line 207
    :catch_2
    move-exception v2

    .line 208
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-object v0
.end method

.method public getDeviceBrand()Ljava/lang/String;
    .locals 1

    .line 121
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 55
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 57
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDeviceInternal()Ljava/lang/String;
    .locals 2

    .line 133
    const-string/jumbo v0, "ro.build.internal.id"

    const-string/jumbo v1, "unKnow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceManufature()Ljava/lang/String;
    .locals 1

    .line 125
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceManutime()J
    .locals 2

    .line 137
    sget-wide v0, Landroid/os/Build;->TIME:J

    return-wide v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 129
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 2

    .line 250
    const-string/jumbo v0, "unKnow"

    .line 251
    .local v0, "ip":Ljava/lang/String;
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getIpFromWifi()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getIpFromNetworkInterface()Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .line 327
    const-string/jumbo v0, "unKnow"

    .line 329
    .local v0, "language":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const-string/jumbo v1, "unKnow"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 335
    :cond_0
    goto :goto_0

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 2

    .line 61
    const-string/jumbo v0, "persist.sys.modelnumber"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeoCurrentBatteryCapacity()I
    .locals 3

    .line 539
    const/4 v0, 0x0

    move v1, v0

    .line 541
    .local v1, "capacity":I
    :try_start_0
    const-string v2, "/sys/class/power_supply/bms/charge_full"

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v1, v2

    .line 542
    if-gtz v1, :cond_0

    .line 543
    const-string v2, "/sys/class/power_supply/neo-battery/charge_full"

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 547
    :cond_0
    goto :goto_0

    .line 545
    :catch_0
    move-exception v2

    .line 546
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 548
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-lez v1, :cond_1

    .line 549
    div-int/lit16 v0, v1, 0x3e8

    return v0

    .line 551
    :cond_1
    return v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 141
    const-string v0, "Android"

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 145
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugType()Ljava/lang/String;
    .locals 3

    .line 89
    const-string/jumbo v0, "yes"

    const-string/jumbo v1, "persist.sys.support.neo_charger"

    const-string/jumbo v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "1"

    const-string v1, "/sys/class/power_supply/neo-charger/present"

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "NEO Charger"

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/usb/real_type"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const-string v0, "/sys/class/power_supply/usb/real_type"

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_1
    const-string v0, "/sys/class/power_supply/usb/type"

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRomVersion()Ljava/lang/String;
    .locals 2

    .line 73
    const-string/jumbo v0, "ro.build.rom.id"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSize()[I
    .locals 5

    .line 154
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 155
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 156
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 157
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x1

    aput v3, v2, v4

    return-object v2
.end method

.method public getSubAccessType()Ljava/lang/String;
    .locals 5

    .line 443
    const-string/jumbo v0, "unKnow"

    .line 446
    .local v0, "type":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 447
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 448
    .local v1, "connectManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 449
    const-string/jumbo v2, "unKnow"

    move-object v0, v2

    goto :goto_1

    .line 451
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 452
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    .line 453
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 454
    const-string v3, "WLAN"

    move-object v0, v3

    goto :goto_1

    .line 455
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_2

    .line 456
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 457
    .local v3, "subType":I
    packed-switch v3, :pswitch_data_0

    .line 457
    .end local v3    # "subType":I
    :pswitch_0
    goto :goto_0

    .line 490
    .restart local v3    # "subType":I
    :pswitch_1
    const-string v4, "4G"

    move-object v0, v4

    .line 491
    goto :goto_0

    .line 486
    :pswitch_2
    const-string v4, "3G"

    move-object v0, v4

    .line 487
    goto :goto_0

    .line 468
    :pswitch_3
    const-string v4, "2G"

    move-object v0, v4

    .line 469
    goto :goto_0

    .line 494
    :pswitch_4
    const-string/jumbo v4, "unKnow"

    move-object v0, v4

    .line 497
    .end local v3    # "subType":I
    :goto_0
    goto :goto_1

    .line 498
    :cond_2
    const-string/jumbo v3, "unKnow"

    move-object v0, v3

    goto :goto_1

    .line 501
    :cond_3
    const-string/jumbo v3, "unKnow"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 506
    .end local v1    # "connectManager":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :goto_1
    goto :goto_2

    .line 504
    :catch_0
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 507
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getTimeZone()I
    .locals 3

    .line 240
    const/16 v0, 0x8

    .line 242
    .local v0, "timeZone":I
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v2, 0x36ee80

    div-int/2addr v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 245
    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getUiVersion()Ljava/lang/String;
    .locals 2

    .line 149
    const-string/jumbo v0, "ro.build.rom.id"

    const-string/jumbo v1, "unKnow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
