.class public final Landroid/telephony/LocationAccessPolicy;
.super Ljava/lang/Object;
.source "LocationAccessPolicy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Landroid/telephony/LocationAccessPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/LocationAccessPolicy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canAccessCellLocation(Landroid/content/Context;Ljava/lang/String;IIZ)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "throwOnDeniedPermission"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 55
    const-string v0, "TelephonyLohcationCheck"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_0

    .line 61
    nop

    .line 90
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 61
    return v0

    .line 70
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    .line 71
    :try_start_0
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v4, "canAccessCellLocation"

    invoke-virtual {p0, v3, p3, p2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 73
    :cond_1
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v3, p3, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v1, :cond_2

    .line 75
    nop

    .line 90
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 75
    return v2

    .line 77
    :cond_2
    :goto_0
    :try_start_1
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    .line 79
    .local v3, "opCode":I
    if-eq v3, v1, :cond_3

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 80
    invoke-virtual {v1, v3, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 81
    nop

    .line 90
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    return v2

    .line 83
    :cond_3
    :try_start_2
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p0, v1}, Landroid/telephony/LocationAccessPolicy;->isLocationModeEnabled(Landroid/content/Context;I)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_4

    .line 84
    nop

    .line 90
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 84
    return v2

    .line 88
    :cond_4
    :try_start_3
    invoke-static {p0, p2}, Landroid/telephony/LocationAccessPolicy;->isCurrentProfile(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p0}, Landroid/telephony/LocationAccessPolicy;->checkInteractAcrossUsersFull(Landroid/content/Context;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_5

    goto :goto_1

    .line 90
    :cond_5
    move v0, v2

    goto :goto_2

    .line 88
    :cond_6
    :goto_1
    nop

    .line 90
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 88
    return v0

    .line 90
    .end local v3    # "opCode":I
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method private static checkInteractAcrossUsersFull(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 104
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isCurrentProfile(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 112
    .local v0, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 113
    .local v2, "currentUser":I
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .local v3, "callingUserId":I
    const/4 v4, 0x1

    if-ne v3, v2, :cond_0

    .line 115
    nop

    .line 127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    return v4

    .line 117
    :cond_0
    :try_start_1
    const-class v5, Landroid/os/UserManager;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 118
    invoke-virtual {v5, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 119
    .local v5, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 120
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v8, v3, :cond_1

    .line 121
    nop

    .line 127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    return v4

    .line 123
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    goto :goto_0

    .line 125
    .end local v5    # "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    const/4 v4, 0x0

    .line 127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    return v4

    .line 127
    .end local v2    # "currentUser":I
    .end local v3    # "callingUserId":I
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private static isLocationModeEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 95
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 96
    .local v0, "locationManager":Landroid/location/LocationManager;
    if-nez v0, :cond_0

    .line 97
    sget-object v1, Landroid/telephony/LocationAccessPolicy;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t get location manager, denying location access"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x0

    return v1

    .line 100
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method
