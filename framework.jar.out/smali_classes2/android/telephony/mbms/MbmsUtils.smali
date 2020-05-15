.class public Landroid/telephony/mbms/MbmsUtils;
.super Ljava/lang/Object;
.source "MbmsUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MbmsUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 135
    const-string v0, "[^a-zA-Z0-9_]"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "sanitizedServiceId":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/mbms/MbmsTempFileProvider;->getEmbmsTempFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 139
    .local v1, "embmsTempFileDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getMiddlewareServiceInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceAction"    # Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 87
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v1, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-static {p0, p1}, Landroid/telephony/mbms/MbmsUtils;->getOverrideServiceName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 92
    .local v2, "overrideService":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 93
    const/high16 v3, 0x100000

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0

    .line 96
    .end local v3    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    const/high16 v3, 0x20000

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 101
    .restart local v3    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 107
    const-string v5, "MbmsUtils"

    const-string v6, "More than one MBMS service found, cannot get unique service"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-object v4

    .line 110
    :cond_2
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v4

    .line 102
    :cond_3
    :goto_1
    const-string v5, "MbmsUtils"

    const-string v6, "No MBMS services found, cannot get service info"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-object v4
.end method

.method public static getOverrideServiceName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceAction"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "metaDataKey":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x51f2f99b

    if-eq v1, v2, :cond_1

    const v2, -0x184971db

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.telephony.action.EmbmsDownload"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "android.telephony.action.EmbmsStreaming"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 60
    :pswitch_0
    const-string/jumbo v0, "mbms-streaming-service-override"

    goto :goto_2

    .line 57
    :pswitch_1
    const-string/jumbo v0, "mbms-download-service-override"

    .line 58
    nop

    .line 63
    :goto_2
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 64
    return-object v1

    .line 69
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 72
    nop

    .line 74
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_4

    .line 75
    return-object v1

    .line 77
    :cond_4
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "serviceComponent":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 79
    return-object v1

    .line 81
    :cond_5
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 71
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "serviceComponent":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isContainedIn(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "child"    # Ljava/io/File;

    .line 41
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "parentPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "childPath":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 44
    .end local v0    # "parentPath":Ljava/lang/String;
    .end local v1    # "childPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve canonical paths: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceAction"    # Ljava/lang/String;
    .param p2, "serviceConnection"    # Landroid/content/ServiceConnection;

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, "bindIntent":Landroid/content/Intent;
    nop

    .line 117
    invoke-static {p0, p1}, Landroid/telephony/mbms/MbmsUtils;->getMiddlewareServiceInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 119
    .local v1, "mbmsServiceInfo":Landroid/content/pm/ServiceInfo;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 120
    return v2

    .line 123
    :cond_0
    invoke-static {v1}, Landroid/telephony/mbms/MbmsUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0, p2, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 126
    const/4 v2, 0x0

    return v2
.end method

.method public static toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "ci"    # Landroid/content/pm/ComponentInfo;

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
