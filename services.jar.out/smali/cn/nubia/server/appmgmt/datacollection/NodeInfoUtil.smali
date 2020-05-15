.class public Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;
.super Ljava/lang/Object;
.source "NodeInfoUtil.java"


# static fields
.field private static BCL:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILE_BCL:Ljava/lang/String; = "hotplug_status"

.field private static final PATH_CAPACITY_PERCENT:Ljava/lang/String; = "/sys/class/power_supply/battery/capacity"

.field private static final PATH_DEVICES:Ljava/lang/String; = "/sys/devices"

.field private static final TAG:Ljava/lang/String; = "NodeInfoUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->BCL:Ljava/util/HashMap;

    .line 17
    sget-object v0, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->BCL:Ljava/util/HashMap;

    const-string v1, "NX569H"

    const-string v2, "/soc.0/qcom,bcl.56/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->BCL:Ljava/util/HashMap;

    const-string v1, "NX569J"

    const-string v2, "/soc.0/qcom,bcl.56/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->BCL:Ljava/util/HashMap;

    const-string v1, "NX531J"

    const-string v2, "/soc/soc:qcom,bcl/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->BCL:Ljava/util/HashMap;

    const-string v1, "NX589J"

    const-string v2, "/soc.0/qcom,bcl.56/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->BCL:Ljava/util/HashMap;

    const-string v1, "NX563J"

    const-string v2, "/soc/soc:qcom,bcl/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->BCL:Ljava/util/HashMap;

    const-string v1, "NX611J"

    const-string v2, "/soc/soc:qcom,bcl/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->BCL:Ljava/util/HashMap;

    const-string v1, "NX609J"

    const-string v2, "/soc/soc:qcom,bcl/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->BCL:Ljava/util/HashMap;

    const-string v1, "NX595J"

    const-string v2, "/soc/soc:qcom,bcl/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->BCL:Ljava/util/HashMap;

    const-string v1, "NX591J"

    const-string v2, "/soc.0/qcom,bcl.56/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryLevel()I
    .locals 1

    .line 44
    const-string v0, "/sys/class/power_supply/battery/capacity"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static isBCL()Z
    .locals 4

    .line 30
    sget-object v0, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->BCL:Ljava/util/HashMap;

    invoke-static {}, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    .local v0, "model_bcl":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sys/devices"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "hotplug_status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "node":Ljava/lang/String;
    nop

    .line 36
    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/NodeInfoUtil;->readNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 37
    .local v3, "value":I
    if-eqz v3, :cond_0

    .line 38
    const/4 v1, 0x1

    return v1

    .line 40
    :cond_0
    return v1

    .line 34
    .end local v2    # "node":Ljava/lang/String;
    .end local v3    # "value":I
    :cond_1
    return v1
.end method

.method private static readNodeInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v1, "-1"

    .line 51
    .local v1, "info":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 52
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 57
    nop

    .line 58
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    goto :goto_1

    .line 56
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 53
    :catch_1
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 58
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 64
    :goto_1
    return-object v1

    .line 56
    :goto_2
    nop

    .line 57
    if-eqz v0, :cond_1

    .line 58
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 60
    :catch_2
    move-exception v3

    .line 61
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 62
    :cond_1
    :goto_3
    throw v2
.end method
