.class Lcom/android/server/pm/PackageInstallerSession$LocalPackageInstallObserver2;
.super Landroid/app/PackageInstallObserver;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalPackageInstallObserver2"
.end annotation


# instance fields
.field finished:Z

.field result:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 898
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageInstallerSession$1;

    .line 898
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession$LocalPackageInstallObserver2;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 904
    monitor-enter p0

    .line 905
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession$LocalPackageInstallObserver2;->finished:Z

    .line 906
    iput p2, p0, Lcom/android/server/pm/PackageInstallerSession$LocalPackageInstallObserver2;->result:I

    .line 907
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 908
    monitor-exit p0

    .line 909
    return-void

    .line 908
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
