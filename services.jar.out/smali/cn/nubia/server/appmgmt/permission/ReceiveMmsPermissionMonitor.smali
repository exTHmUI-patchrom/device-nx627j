.class public Lcn/nubia/server/appmgmt/permission/ReceiveMmsPermissionMonitor;
.super Ljava/lang/Object;
.source "ReceiveMmsPermissionMonitor.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/permission/IAppStateChangeObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "ReceiveMmsPermissionMonitor"


# instance fields
.field private context:Landroid/content/Context;

.field private mAppOpsManager:Landroid/app/AppOpsManager;


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "manager"    # Landroid/app/AppOpsManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/nubia/server/appmgmt/permission/ReceiveMmsPermissionMonitor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 24
    iput-object p2, p0, Lcn/nubia/server/appmgmt/permission/ReceiveMmsPermissionMonitor;->context:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private getApplicationSdkVersion(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/ReceiveMmsPermissionMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 64
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 65
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 66
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    const v1, 0x7fffffff

    return v1
.end method

.method private isSurportRuntimePermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/permission/ReceiveMmsPermissionMonitor;->getApplicationSdkVersion(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public noteAppBackground(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .line 55
    return-void
.end method

.method public noteAppForeground(Ljava/lang/String;)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/permission/ReceiveMmsPermissionMonitor;->isSurportRuntimePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/ReceiveMmsPermissionMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 33
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 35
    .local v1, "pinfo":Landroid/content/pm/PackageInfo;
    const/16 v2, 0x1000

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v1, v2

    .line 36
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 37
    return-void

    .line 39
    :cond_1
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 40
    .local v2, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 41
    .local v6, "perm":Ljava/lang/String;
    const-string v7, "android.permission.RECEIVE_SMS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "android.permission.RECEIVE_MMS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 42
    :cond_2
    invoke-static {v6}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    .line 43
    .local v7, "op":I
    iget-object v8, p0, Lcn/nubia/server/appmgmt/permission/ReceiveMmsPermissionMonitor;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v7, v9, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v8

    .line 44
    .local v8, "mode":I
    const-string v9, "ReceiveMmsPermissionMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkPermission! pkg : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", op : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v6    # "perm":Ljava/lang/String;
    .end local v7    # "op":I
    .end local v8    # "mode":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 49
    .end local v2    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    goto :goto_1

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 50
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return-void
.end method
