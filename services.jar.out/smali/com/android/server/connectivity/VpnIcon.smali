.class Lcom/android/server/connectivity/VpnIcon;
.super Ljava/lang/Object;
.source "VpnIcon.java"


# static fields
.field private static final NOTIFICATION_ID:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackage:Ljava/lang/String;

.field private final mUserHandle:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    .line 34
    iput p2, p0, Lcom/android/server/connectivity/VpnIcon;->mUserHandle:I

    .line 35
    iput-object p3, p0, Lcom/android/server/connectivity/VpnIcon;->mPackage:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private createBitmap(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 125
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 128
    .local v2, "width":I
    iget-object v3, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 130
    .local v3, "height":I
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 131
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    .local v4, "c":Landroid/graphics/Canvas;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "c":Landroid/graphics/Canvas;
    :cond_0
    return-object v0
.end method

.method private hideNotification(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 113
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 116
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 119
    :cond_0
    return-void
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/internal/net/VpnConfig;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "userHandle"    # I
    .param p4, "vpnConfig"    # Lcom/android/internal/net/VpnConfig;
    .param p5, "statusIntent"    # Landroid/app/PendingIntent;

    .line 81
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 84
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_2

    .line 85
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const v4, 0x10406a7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 86
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const v4, 0x10406a8

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "title":Ljava/lang/String;
    :goto_0
    iget-object v4, p4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const v5, 0x10406a5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 88
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const v5, 0x10406a6

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "text":Ljava/lang/String;
    :goto_1
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x108089e

    .line 95
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 97
    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 98
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 99
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 100
    invoke-virtual {v5, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 101
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 102
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v5, "Running"

    .line 104
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v5, "90"

    .line 105
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 108
    .local v1, "notification":Landroid/app/Notification;
    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 110
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method hideNotificationForAll()V
    .locals 6

    .line 65
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 66
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/connectivity/VpnIcon;->mUserHandle:I

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/VpnIcon;->hideNotification(I)V

    .line 69
    :try_start_0
    iget v2, p0, Lcom/android/server/connectivity/VpnIcon;->mUserHandle:I

    if-nez v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 71
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 72
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/VpnIcon;->hideNotification(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 76
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    nop

    .line 78
    return-void

    .line 76
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method showNotificationAccordingToPackage(ILcom/android/internal/net/VpnConfig;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "userHandle"    # I
    .param p2, "vpnConfig"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "statusIntent"    # Landroid/app/PendingIntent;

    .line 39
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIcon;->mPackage:Ljava/lang/String;

    const-string v1, "[Legacy VPN]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/connectivity/VpnIcon;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/internal/net/VpnConfig;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 44
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 46
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/VpnIcon;->mPackage:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/connectivity/VpnIcon;->mUserHandle:I

    .line 47
    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 49
    .local v3, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "label":Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Lcom/android/server/connectivity/VpnIcon;->createBitmap(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 52
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/VpnIcon;->hideNotification(I)V

    .line 53
    iget-object v4, p0, Lcom/android/server/connectivity/VpnIcon;->mPackage:Ljava/lang/String;

    const-string v5, "cn.nubia.game.networkacceleration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 54
    move-object v5, p0

    move v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/connectivity/VpnIcon;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/internal/net/VpnConfig;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "label":Ljava/lang/String;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    nop

    .line 62
    .end local v0    # "token":J
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 59
    .restart local v0    # "token":J
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 56
    :catch_0
    move-exception v3

    .line 57
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid application"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
