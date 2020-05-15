.class public final Lnubia/enterprisecustom/EnterpriseCustomManager;
.super Ljava/lang/Object;
.source "EnterpriseCustomManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lnubia/enterprisecustom/IEnterpriseCustomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lnubia/enterprisecustom/EnterpriseCustomManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnubia/enterprisecustom/EnterpriseCustomManager;->TAG:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lnubia/enterprisecustom/EnterpriseCustomManager;->mService:Lnubia/enterprisecustom/IEnterpriseCustomManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkProjectSupport()Z
    .locals 1

    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public static closeFile()Z
    .locals 1

    .line 86
    :try_start_0
    invoke-static {}, Lnubia/enterprisecustom/EnterpriseCustomManager;->getService()Lnubia/enterprisecustom/IEnterpriseCustomManager;

    move-result-object v0

    invoke-interface {v0}, Lnubia/enterprisecustom/IEnterpriseCustomManager;->closeFile()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 90
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public static closeFileOutputStream()Z
    .locals 1

    .line 113
    :try_start_0
    invoke-static {}, Lnubia/enterprisecustom/EnterpriseCustomManager;->getService()Lnubia/enterprisecustom/IEnterpriseCustomManager;

    move-result-object v0

    invoke-interface {v0}, Lnubia/enterprisecustom/IEnterpriseCustomManager;->closeFileOutputStream()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public static copyFile([BI)Z
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "byteReads"    # I

    .line 77
    :try_start_0
    invoke-static {}, Lnubia/enterprisecustom/EnterpriseCustomManager;->getService()Lnubia/enterprisecustom/IEnterpriseCustomManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lnubia/enterprisecustom/IEnterpriseCustomManager;->copyFile([BI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 81
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public static createFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "toPath"    # Ljava/lang/String;

    .line 67
    :try_start_0
    invoke-static {}, Lnubia/enterprisecustom/EnterpriseCustomManager;->getService()Lnubia/enterprisecustom/IEnterpriseCustomManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lnubia/enterprisecustom/IEnterpriseCustomManager;->createFile(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 71
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public static createFileOutputStream()Z
    .locals 1

    .line 104
    :try_start_0
    invoke-static {}, Lnubia/enterprisecustom/EnterpriseCustomManager;->getService()Lnubia/enterprisecustom/IEnterpriseCustomManager;

    move-result-object v0

    invoke-interface {v0}, Lnubia/enterprisecustom/IEnterpriseCustomManager;->createFileOutputStream()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "toPath"    # Ljava/lang/String;

    .line 123
    :try_start_0
    invoke-static {}, Lnubia/enterprisecustom/EnterpriseCustomManager;->getService()Lnubia/enterprisecustom/IEnterpriseCustomManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lnubia/enterprisecustom/IEnterpriseCustomManager;->deleteFile(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnterpriseCustomComplete()Z
    .locals 1

    .line 47
    :try_start_0
    invoke-static {}, Lnubia/enterprisecustom/EnterpriseCustomManager;->getService()Lnubia/enterprisecustom/IEnterpriseCustomManager;

    move-result-object v0

    invoke-interface {v0}, Lnubia/enterprisecustom/IEnterpriseCustomManager;->getEnterpriseCustomComplete()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 51
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method private static getService()Lnubia/enterprisecustom/IEnterpriseCustomManager;
    .locals 1

    .line 13
    sget-object v0, Lnubia/enterprisecustom/EnterpriseCustomManager;->mService:Lnubia/enterprisecustom/IEnterpriseCustomManager;

    if-nez v0, :cond_0

    .line 14
    const-string v0, "nubia.enterprisecustom"

    .line 15
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/enterprisecustom/IEnterpriseCustomManager;

    move-result-object v0

    sput-object v0, Lnubia/enterprisecustom/EnterpriseCustomManager;->mService:Lnubia/enterprisecustom/IEnterpriseCustomManager;

    .line 17
    :cond_0
    sget-object v0, Lnubia/enterprisecustom/EnterpriseCustomManager;->mService:Lnubia/enterprisecustom/IEnterpriseCustomManager;

    return-object v0
.end method

.method public static getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    :try_start_0
    invoke-static {}, Lnubia/enterprisecustom/EnterpriseCustomManager;->getService()Lnubia/enterprisecustom/IEnterpriseCustomManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lnubia/enterprisecustom/IEnterpriseCustomManager;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 61
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isEnterPriseCustompackage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packagename"    # Ljava/lang/String;

    .line 133
    :try_start_0
    invoke-static {}, Lnubia/enterprisecustom/EnterpriseCustomManager;->getService()Lnubia/enterprisecustom/IEnterpriseCustomManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lnubia/enterprisecustom/IEnterpriseCustomManager;->isEnterPriseCustompackage(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportFactoryReset(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    :try_start_0
    invoke-static {}, Lnubia/enterprisecustom/EnterpriseCustomManager;->getService()Lnubia/enterprisecustom/IEnterpriseCustomManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lnubia/enterprisecustom/IEnterpriseCustomManager;->isSupportFactoryReset(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 31
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public static mkdirsFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "toPath"    # Ljava/lang/String;

    .line 94
    :try_start_0
    invoke-static {}, Lnubia/enterprisecustom/EnterpriseCustomManager;->getService()Lnubia/enterprisecustom/IEnterpriseCustomManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lnubia/enterprisecustom/IEnterpriseCustomManager;->mkdirsFile(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public static setEnterpriseCustomComplete(Ljava/lang/String;)Z
    .locals 1
    .param p0, "flag"    # Ljava/lang/String;

    .line 37
    :try_start_0
    invoke-static {}, Lnubia/enterprisecustom/EnterpriseCustomManager;->getService()Lnubia/enterprisecustom/IEnterpriseCustomManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lnubia/enterprisecustom/IEnterpriseCustomManager;->setEnterpriseCustomComplete(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 41
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public static unstallAppAndReboot(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "packagename"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;

    .line 143
    :try_start_0
    invoke-static {}, Lnubia/enterprisecustom/EnterpriseCustomManager;->getService()Lnubia/enterprisecustom/IEnterpriseCustomManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lnubia/enterprisecustom/IEnterpriseCustomManager;->unstallAppAndReboot(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 147
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method
