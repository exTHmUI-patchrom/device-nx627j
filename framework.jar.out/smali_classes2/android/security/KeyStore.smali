.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field public static final CANNOT_ATTEST_IDS:I = -0x42

.field public static final CONFIRMATIONUI_ABORTED:I = 0x2

.field public static final CONFIRMATIONUI_CANCELED:I = 0x1

.field public static final CONFIRMATIONUI_IGNORED:I = 0x4

.field public static final CONFIRMATIONUI_OK:I = 0x0

.field public static final CONFIRMATIONUI_OPERATION_PENDING:I = 0x3

.field public static final CONFIRMATIONUI_SYSTEM_ERROR:I = 0x5

.field public static final CONFIRMATIONUI_UIERROR:I = 0x10000

.field public static final CONFIRMATIONUI_UIERROR_MALFORMED_UTF8_ENCODING:I = 0x10003

.field public static final CONFIRMATIONUI_UIERROR_MESSAGE_TOO_LONG:I = 0x10002

.field public static final CONFIRMATIONUI_UIERROR_MISSING_GLYPH:I = 0x10001

.field public static final CONFIRMATIONUI_UNEXPECTED:I = 0x7

.field public static final CONFIRMATIONUI_UNIMPLEMENTED:I = 0x6

.field public static final FLAG_CRITICAL_TO_DEVICE_ENCRYPTION:I = 0x8

.field public static final FLAG_ENCRYPTED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_SOFTWARE:I = 0x2

.field public static final FLAG_STRONGBOX:I = 0x10

.field public static final HARDWARE_TYPE_UNAVAILABLE:I = -0x44

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final OP_AUTH_NEEDED:I = 0xf

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa


# instance fields
.field private final mBinder:Landroid/security/IKeystoreService;

.field private final mContext:Landroid/content/Context;

.field private mError:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/security/IKeystoreService;)V
    .locals 1
    .param p1, "binder"    # Landroid/security/IKeystoreService;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Landroid/security/KeyStore;->mError:I

    .line 141
    iput-object p1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    .line 142
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    .line 143
    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 3

    .line 146
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 147
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 151
    return-object v0

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to obtain application Context from ActivityThread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getFingerprintOnlySid()J
    .locals 5

    .line 906
    iget-object v0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 907
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 908
    return-wide v2

    .line 910
    :cond_0
    iget-object v1, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 911
    .local v1, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-nez v1, :cond_1

    .line 912
    return-wide v2

    .line 917
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .locals 2

    .line 155
    const-string v0, "android.security.keystore"

    .line 156
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    .line 157
    .local v0, "keystore":Landroid/security/IKeystoreService;
    new-instance v1, Landroid/security/KeyStore;

    invoke-direct {v1, v0}, Landroid/security/KeyStore;-><init>(Landroid/security/IKeystoreService;)V

    return-object v1
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .locals 2
    .param p0, "errorCode"    # I

    .line 807
    if-lez p0, :cond_1

    .line 809
    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 827
    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 823
    :pswitch_0
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 821
    :pswitch_1
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 819
    :pswitch_2
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Permission denied"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 817
    :pswitch_3
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "System error"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 815
    :pswitch_4
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 813
    :pswitch_5
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "User authentication required"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 811
    :pswitch_6
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "OK"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 825
    :cond_0
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Operation requires authorization"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 831
    :cond_1
    const/16 v0, -0x10

    if-eq p0, v0, :cond_2

    .line 838
    new-instance v0, Landroid/security/KeyStoreException;

    .line 839
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 838
    return-object v0

    .line 835
    :cond_2
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized getToken()Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    .line 164
    :cond_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/security/KeyStore;
    throw v0
.end method


# virtual methods
.method public abort(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 594
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->abort(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    const/4 v1, 0x4

    return v1
.end method

.method public addAuthToken([B)I
    .locals 3
    .param p1, "authToken"    # [B

    .line 625
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->addAuthToken([B)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    const/4 v1, 0x4

    return v1
.end method

.method public addRngEntropy([BI)Z
    .locals 4
    .param p1, "data"    # [B
    .param p2, "flags"    # I

    .line 459
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->addRngEntropy([BI)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    return v0
.end method

.method public attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    .locals 3
    .param p1, "params"    # Landroid/security/keymaster/KeymasterArguments;
    .param p2, "outChain"    # Landroid/security/keymaster/KeymasterCertificateChain;

    .line 712
    if-nez p1, :cond_0

    .line 713
    :try_start_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object p1, v0

    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    goto :goto_1

    .line 715
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 716
    new-instance v0, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    move-object p2, v0

    .line 718
    :cond_1
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2}, Landroid/security/IKeystoreService;->attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 719
    :goto_1
    nop

    .line 720
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    const/4 v1, 0x4

    return v1
.end method

.method public attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "outChain"    # Landroid/security/keymaster/KeymasterCertificateChain;

    .line 697
    if-nez p2, :cond_0

    .line 698
    :try_start_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object p2, v0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    goto :goto_1

    .line 700
    :cond_0
    :goto_0
    if-nez p3, :cond_1

    .line 701
    new-instance v0, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    move-object p3, v0

    .line 703
    :cond_1
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/IKeystoreService;->attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 704
    :goto_1
    nop

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 706
    const/4 v1, 0x4

    return v1
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "purpose"    # I
    .param p3, "pruneable"    # Z
    .param p4, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p5, "entropy"    # [B

    .line 559
    if-eqz p5, :cond_0

    move-object v6, p5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v6, v0

    .line 560
    .end local p5    # "entropy":[B
    .local v6, "entropy":[B
    :goto_0
    if-eqz p4, :cond_1

    move-object v5, p4

    goto :goto_1

    :cond_1
    new-instance p5, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object v5, p5

    .line 561
    .end local p4    # "args":Landroid/security/keymaster/KeymasterArguments;
    .local v5, "args":Landroid/security/keymaster/KeymasterArguments;
    :goto_1
    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object p4

    return-object p4
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;
    .locals 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "purpose"    # I
    .param p3, "pruneable"    # Z
    .param p4, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p5, "entropy"    # [B
    .param p6, "uid"    # I

    .line 548
    if-eqz p4, :cond_0

    move-object v6, p4

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v0

    .line 549
    .end local p4    # "args":Landroid/security/keymaster/KeymasterArguments;
    .local v6, "args":Landroid/security/keymaster/KeymasterArguments;
    :goto_0
    if-eqz p5, :cond_1

    move-object v7, p5

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :try_start_1
    new-array p4, p4, [B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, p4

    .line 550
    .end local p5    # "entropy":[B
    .local v7, "entropy":[B
    :goto_1
    :try_start_2
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-direct {p0}, Landroid/security/KeyStore;->getToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v8, p6

    invoke-interface/range {v1 .. v8}, Landroid/security/IKeystoreService;->begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object p4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p4

    .line 551
    :catch_0
    move-exception p4

    goto :goto_2

    .end local v7    # "entropy":[B
    .restart local p5    # "entropy":[B
    :catch_1
    move-exception p4

    move-object v7, p5

    goto :goto_2

    .end local v6    # "args":Landroid/security/keymaster/KeymasterArguments;
    .restart local p4    # "args":Landroid/security/keymaster/KeymasterArguments;
    :catch_2
    move-exception v0

    move-object v6, p4

    move-object v7, p5

    move-object p4, v0

    .line 552
    .end local p5    # "entropy":[B
    .restart local v6    # "args":Landroid/security/keymaster/KeymasterArguments;
    .restart local v7    # "entropy":[B
    .local p4, "e":Landroid/os/RemoteException;
    :goto_2
    const-string p5, "KeyStore"

    const-string v0, "Cannot connect to keystore"

    invoke-static {p5, v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    const/4 p5, 0x0

    return-object p5
.end method

.method public cancelConfirmationPrompt(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "listener"    # Landroid/os/IBinder;

    .line 781
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->cancelConfirmationPrompt(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    const/4 v1, 0x5

    return v1
.end method

.method public clearUid(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 446
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Landroid/security/IKeystoreService;->clear_uid(J)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 447
    :catch_0
    move-exception v1

    .line 448
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 249
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 241
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->exist(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 236
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 227
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->del(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .local v1, "ret":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    return v0

    .line 229
    .end local v1    # "ret":I
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    return v0
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "appId"    # Landroid/security/keymaster/KeymasterBlob;

    .line 542
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    move-result-object v0

    return-object v0
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;
    .locals 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p5, "uid"    # I

    .line 532
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object v6, p3

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/security/keymaster/KeymasterBlob;

    new-array v2, v0, [B

    invoke-direct {v1, v2}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v1

    .line 533
    .end local p3    # "clientId":Landroid/security/keymaster/KeymasterBlob;
    .local v6, "clientId":Landroid/security/keymaster/KeymasterBlob;
    :goto_0
    if-eqz p4, :cond_1

    move-object v7, p4

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance p3, Landroid/security/keymaster/KeymasterBlob;

    new-array v0, v0, [B

    invoke-direct {p3, v0}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, p3

    .line 534
    .end local p4    # "appId":Landroid/security/keymaster/KeymasterBlob;
    .local v7, "appId":Landroid/security/keymaster/KeymasterBlob;
    :goto_1
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v4, p1

    move v5, p2

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/security/IKeystoreService;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    move-result-object p3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p3

    .line 535
    :catch_0
    move-exception p3

    move-object p4, v7

    goto :goto_2

    .end local v7    # "appId":Landroid/security/keymaster/KeymasterBlob;
    .restart local p4    # "appId":Landroid/security/keymaster/KeymasterBlob;
    :catch_1
    move-exception p3

    goto :goto_2

    .end local v6    # "clientId":Landroid/security/keymaster/KeymasterBlob;
    .restart local p3    # "clientId":Landroid/security/keymaster/KeymasterBlob;
    :catch_2
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 536
    .restart local v6    # "clientId":Landroid/security/keymaster/KeymasterBlob;
    .local p3, "e":Landroid/os/RemoteException;
    :goto_2
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    const/4 v0, 0x0

    return-object v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "signature"    # [B

    .line 589
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/security/KeyStore;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "signature"    # [B
    .param p4, "entropy"    # [B

    .line 578
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    :goto_0
    move-object p2, v0

    .line 579
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    move-object v1, p4

    goto :goto_1

    :cond_1
    new-array v1, v0, [B

    :goto_1
    move-object p4, v1

    .line 580
    if-eqz p3, :cond_2

    move-object v0, p3

    goto :goto_2

    :cond_2
    new-array v0, v0, [B

    :goto_2
    move-object p3, v0

    .line 581
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    const/4 v1, 0x0

    return-object v1
.end method

.method public generate(Ljava/lang/String;IIII[[B)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keyType"    # I
    .param p4, "keySize"    # I
    .param p5, "flags"    # I
    .param p6, "args"    # [[B

    .line 344
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    new-instance v7, Landroid/security/KeystoreArguments;

    invoke-direct {v7, p6}, Landroid/security/KeystoreArguments;-><init>([[B)V

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/security/IKeystoreService;->generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    return v0
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "entropy"    # [B
    .param p4, "uid"    # I
    .param p5, "flags"    # I
    .param p6, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .line 469
    if-eqz p3, :cond_0

    move-object v4, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v4, v0

    .line 470
    .end local p3    # "entropy":[B
    .local v4, "entropy":[B
    :goto_0
    if-eqz p2, :cond_1

    move-object v3, p2

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance p3, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p3}, Landroid/security/keymaster/KeymasterArguments;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, p3

    .line 471
    .end local p2    # "args":Landroid/security/keymaster/KeymasterArguments;
    .local v3, "args":Landroid/security/keymaster/KeymasterArguments;
    :goto_1
    :try_start_2
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v2, p1

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/security/IKeystoreService;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result p2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p2

    .line 472
    :catch_0
    move-exception p2

    goto :goto_2

    .end local v3    # "args":Landroid/security/keymaster/KeymasterArguments;
    .restart local p2    # "args":Landroid/security/keymaster/KeymasterArguments;
    :catch_1
    move-exception p3

    move-object v3, p2

    move-object p2, p3

    goto :goto_2

    .end local v4    # "entropy":[B
    .restart local p3    # "entropy":[B
    :catch_2
    move-exception v0

    move-object v3, p2

    move-object v4, p3

    move-object p2, v0

    .line 473
    .end local p3    # "entropy":[B
    .restart local v3    # "args":Landroid/security/keymaster/KeymasterArguments;
    .restart local v4    # "entropy":[B
    .local p2, "e":Landroid/os/RemoteException;
    :goto_2
    const-string p3, "KeyStore"

    const-string v0, "Cannot connect to keystore"

    invoke-static {p3, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    const/4 p3, 0x4

    return p3
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "entropy"    # [B
    .param p4, "flags"    # I
    .param p5, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .line 480
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 206
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;I)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 194
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, ""

    :goto_0
    move-object p1, v1

    .line 195
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->get(Ljava/lang/String;I)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string v2, "KeyStore"

    const-string v3, "KeyStore exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    return-object v0

    .line 196
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v1

    .line 197
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    return-object v0
.end method

.method public getInvalidKeyException(Ljava/lang/String;II)Ljava/security/InvalidKeyException;
    .locals 1
    .param p1, "keystoreKeyAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "errorCode"    # I

    .line 926
    invoke-static {p3}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;
    .locals 9
    .param p1, "keystoreKeyAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "e"    # Landroid/security/KeyStoreException;

    .line 850
    invoke-virtual {p3}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 901
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Keystore operation failed"

    invoke-direct {v0, v1, p3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 899
    :pswitch_0
    new-instance v0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v0

    .line 852
    :pswitch_1
    new-instance v0, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v0

    .line 856
    :pswitch_2
    new-instance v0, Landroid/security/keystore/KeyNotYetValidException;

    invoke-direct {v0}, Landroid/security/keystore/KeyNotYetValidException;-><init>()V

    return-object v0

    .line 854
    :pswitch_3
    new-instance v0, Landroid/security/keystore/KeyExpiredException;

    invoke-direct {v0}, Landroid/security/keystore/KeyExpiredException;-><init>()V

    return-object v0

    .line 865
    :cond_0
    :pswitch_4
    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 866
    .local v0, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 867
    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    .line 869
    .local v1, "getKeyCharacteristicsErrorCode":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 870
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Failed to obtained key characteristics"

    .line 872
    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 870
    return-object v2

    .line 874
    :cond_1
    const v2, -0x5ffffe0a

    .line 875
    invoke-virtual {v0, v2}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object v2

    .line 876
    .local v2, "keySids":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 878
    new-instance v3, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v3}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v3

    .line 880
    :cond_2
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v3

    .line 881
    .local v3, "rootSid":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    invoke-static {v3, v4}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 884
    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v5

    .line 887
    :cond_3
    invoke-direct {p0}, Landroid/security/KeyStore;->getFingerprintOnlySid()J

    move-result-wide v7

    .line 888
    .local v7, "fingerprintOnlySid":J
    cmp-long v5, v7, v5

    if-eqz v5, :cond_4

    .line 889
    invoke-static {v7, v8}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 892
    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v5

    .line 896
    :cond_4
    new-instance v5, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v5}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch -0x1a
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p3, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "uid"    # I
    .param p5, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .line 486
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v5, p2

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/security/keymaster/KeymasterBlob;

    new-array v2, v0, [B

    invoke-direct {v1, v2}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v1

    .line 487
    .end local p2    # "clientId":Landroid/security/keymaster/KeymasterBlob;
    .local v5, "clientId":Landroid/security/keymaster/KeymasterBlob;
    :goto_0
    if-eqz p3, :cond_1

    move-object v6, p3

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance p2, Landroid/security/keymaster/KeymasterBlob;

    new-array v0, v0, [B

    invoke-direct {p2, v0}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, p2

    .line 488
    .end local p3    # "appId":Landroid/security/keymaster/KeymasterBlob;
    .local v6, "appId":Landroid/security/keymaster/KeymasterBlob;
    :goto_1
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v4, p1

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/security/IKeystoreService;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result p2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p2

    .line 489
    :catch_0
    move-exception p2

    move-object p3, v6

    goto :goto_2

    .end local v6    # "appId":Landroid/security/keymaster/KeymasterBlob;
    .restart local p3    # "appId":Landroid/security/keymaster/KeymasterBlob;
    :catch_1
    move-exception p2

    goto :goto_2

    .end local v5    # "clientId":Landroid/security/keymaster/KeymasterBlob;
    .restart local p2    # "clientId":Landroid/security/keymaster/KeymasterBlob;
    :catch_2
    move-exception v0

    move-object v5, p2

    move-object p2, v0

    .line 490
    .restart local v5    # "clientId":Landroid/security/keymaster/KeymasterBlob;
    .local p2, "e":Landroid/os/RemoteException;
    :goto_2
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    const/4 v0, 0x4

    return v0
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p3, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .line 497
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 1

    .line 454
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    return v0
.end method

.method public getmtime(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 427
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getmtime(Ljava/lang/String;I)J
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 414
    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1, p2}, Landroid/security/IKeystoreService;->getmtime(Ljava/lang/String;I)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .local v2, "millis":J
    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 416
    return-wide v0

    .line 419
    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    .line 420
    .end local v2    # "millis":J
    :catch_0
    move-exception v2

    .line 421
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "KeyStore"

    const-string v4, "Cannot connect to keystore"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    return-wide v0
.end method

.method public grant(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 390
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->grant(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "grantAlias":Ljava/lang/String;
    const-string v2, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    return-object v0

    .line 392
    :cond_0
    return-object v1

    .line 393
    .end local v1    # "grantAlias":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    return-object v0
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "format"    # I
    .param p4, "keyData"    # [B
    .param p5, "uid"    # I
    .param p6, "flags"    # I
    .param p7, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .line 503
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/security/IKeystoreService;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    const/4 v1, 0x4

    return v1
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "format"    # I
    .param p4, "keyData"    # [B
    .param p5, "flags"    # I
    .param p6, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .line 513
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public importKey(Ljava/lang/String;[BII)Z
    .locals 4
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .line 354
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->import_key(Ljava/lang/String;[BII)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    return v0
.end method

.method public importWrappedKey(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 13
    .param p1, "wrappedKeyAlias"    # Ljava/lang/String;
    .param p2, "wrappedKey"    # [B
    .param p3, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p4, "maskingKey"    # [B
    .param p5, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p6, "rootSid"    # J
    .param p8, "fingerprintSid"    # J
    .param p10, "uid"    # I
    .param p11, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .line 521
    move-object v1, p0

    :try_start_0
    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p11

    invoke-interface/range {v2 .. v12}, Landroid/security/IKeystoreService;->importWrappedKey(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJLandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    const/4 v2, 0x4

    return v2
.end method

.method public insert(Ljava/lang/String;[BII)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .line 215
    if-nez p2, :cond_0

    .line 216
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [B

    move-object p2, v0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    goto :goto_1

    .line 218
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->insert(Ljava/lang/String;[BII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 219
    :goto_1
    nop

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    const/4 v1, 0x4

    return v1
.end method

.method public isConfirmationPromptSupported()Z
    .locals 3

    .line 795
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0}, Landroid/security/IKeystoreService;->isConfirmationPromptSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    const/4 v1, 0x0

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 338
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isEmpty(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 330
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->isEmpty(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    return v0
.end method

.method public isHardwareBacked()Z
    .locals 1

    .line 432
    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHardwareBacked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "keyType"    # Ljava/lang/String;

    .line 437
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/security/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    return v0
.end method

.method public isOperationAuthorized(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 609
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->isOperationAuthorized(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    const/4 v1, 0x0

    return v1
.end method

.method public isUnlocked()Z
    .locals 2

    .line 189
    invoke-virtual {p0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 268
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 257
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string v2, "KeyStore"

    const-string v3, "KeyStore exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    return-object v0

    .line 258
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v1

    .line 259
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    return-object v0
.end method

.method public lock()Z
    .locals 1

    .line 296
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->lock(I)Z

    move-result v0

    return v0
.end method

.method public lock(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 288
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->lock(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    return v0
.end method

.method public onDeviceOffBody()V
    .locals 3

    .line 730
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0}, Landroid/security/IKeystoreService;->onDeviceOffBody()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    goto :goto_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onUserAdded(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 674
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->onUserAdded(II)V

    .line 675
    return-void
.end method

.method public onUserAdded(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "parentId"    # I

    .line 662
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2}, Landroid/security/IKeystoreService;->onUserAdded(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onUserPasswordChanged(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;

    .line 641
    if-nez p2, :cond_0

    .line 642
    const-string p2, ""

    .line 645
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->onUserPasswordChanged(ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    .line 646
    :catch_0
    move-exception v1

    .line 647
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    return v0
.end method

.method public onUserPasswordChanged(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newPassword"    # Ljava/lang/String;

    .line 691
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onUserRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 684
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->onUserRemoved(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I
    .locals 6
    .param p1, "listener"    # Landroid/os/IBinder;
    .param p2, "promptText"    # Ljava/lang/String;
    .param p3, "extraData"    # [B
    .param p4, "locale"    # Ljava/lang/String;
    .param p5, "uiOptionsAsFlags"    # I

    .line 764
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/security/IKeystoreService;->presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    const/4 v1, 0x5

    return v1
.end method

.method public put(Ljava/lang/String;[BII)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .line 210
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public reset()Z
    .locals 4

    .line 273
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1}, Landroid/security/IKeystoreService;->reset()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    return v0
.end method

.method public sign(Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 363
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->sign(Ljava/lang/String;[B)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string v2, "KeyStore"

    const-string v3, "KeyStore exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    return-object v0

    .line 364
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v1

    .line 365
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    return-object v0
.end method

.method public state()Landroid/security/KeyStore$State;
    .locals 1

    .line 185
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    return-object v0
.end method

.method public state(I)Landroid/security/KeyStore$State;
    .locals 3
    .param p1, "userId"    # I

    .line 170
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->getState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .local v0, "ret":I
    nop

    .line 173
    nop

    .line 176
    packed-switch v0, :pswitch_data_0

    .line 180
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 179
    :pswitch_0
    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    return-object v1

    .line 178
    :pswitch_1
    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    return-object v1

    .line 177
    :pswitch_2
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    return-object v1

    .line 171
    .end local v0    # "ret":I
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ungrant(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 401
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->ungrant(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    return v0
.end method

.method public unlock(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .line 312
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, ""

    :goto_0
    move-object p2, v1

    .line 313
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->unlock(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/security/KeyStore;->mError:I

    .line 314
    iget v1, p0, Landroid/security/KeyStore;->mError:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    return v0
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .line 322
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "input"    # [B

    .line 566
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    :goto_0
    move-object p2, v0

    .line 567
    if-eqz p3, :cond_1

    move-object v0, p3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_1
    move-object p3, v0

    .line 568
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/IKeystoreService;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 571
    const/4 v1, 0x0

    return-object v1
.end method

.method public verify(Ljava/lang/String;[B[B)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "signature"    # [B

    .line 376
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    :try_start_0
    new-array v1, v0, [B

    :goto_0
    move-object p3, v1

    .line 377
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3}, Landroid/security/IKeystoreService;->verify(Ljava/lang/String;[B[B)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string v2, "KeyStore"

    const-string v3, "KeyStore exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    return v0

    .line 378
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v1

    .line 379
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    return v0
.end method
