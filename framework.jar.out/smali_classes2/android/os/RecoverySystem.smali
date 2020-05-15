.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$CleanType;,
        Landroid/os/RecoverySystem$ProgressListener;
    }
.end annotation


# static fields
.field private static final ACTION_EUICC_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.action.EUICC_FACTORY_RESET"

.field public static final BLOCK_MAP_FILE:Ljava/io/File;

.field private static final DEFAULT_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x7530L

.field private static final DEFAULT_KEYSTORE:Ljava/io/File;

.field private static final LAST_INSTALL_FILE:Ljava/io/File;

.field private static final LAST_PREFIX:Ljava/lang/String; = "last_"

.field private static final LOG_FILE:Ljava/io/File;

.field private static final LOG_FILE_MAX_LENGTH:I = 0x10000

.field private static final MAX_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0xea60L

.field private static final MIN_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x1388L

.field private static final PACKAGE_NAME_WIPING_EUICC_DATA_CALLBACK:Ljava/lang/String; = "android"

.field private static final PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static final RECOVERY_DIR:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "RecoverySystem"

.field private static UNCRYPT_FILE:Ljava/io/File;

.field public static final UNCRYPT_PACKAGE_FILE:Ljava/io/File;

.field public static final UNCRYPT_STATUS_FILE:Ljava/io/File;

.field private static final sRequestLock:Ljava/lang/Object;


# instance fields
.field private final mService:Landroid/os/IRecoverySystem;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 397
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 85
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 98
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 99
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_file"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_FILE:Ljava/io/File;

    .line 100
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 101
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "last_install"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LAST_INSTALL_FILE:Ljava/io/File;

    .line 116
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "block.map"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 124
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_file"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 132
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_status"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1207
    return-void
.end method

.method public constructor <init>(Landroid/os/IRecoverySystem;)V
    .locals 0
    .param p1, "service"    # Landroid/os/IRecoverySystem;

    .line 1212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1213
    iput-object p1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1214
    return-void
.end method

.method private static varargs bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 940
    sget-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 943
    .local v0, "command":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 944
    .local v3, "arg":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 945
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    .end local v3    # "arg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 952
    :cond_1
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 953
    .local v1, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    .line 955
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Reboot failed (no permissions?)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static cancelScheduledUpdate(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 691
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v0}, Landroid/os/RecoverySystem;->clearBcb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    return-void

    .line 692
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "cancel scheduled update failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private clearBcb()Z
    .locals 1

    .line 1174
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0}, Landroid/os/IRecoverySystem;->clearBcb()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1175
    :catch_0
    move-exception v0

    .line 1177
    const/4 v0, 0x0

    return v0
.end method

.method private static getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .locals 7
    .param p0, "keystore"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 161
    .local v0, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    if-nez p0, :cond_0

    .line 162
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 164
    :cond_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 166
    .local v1, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 167
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 168
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 170
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 172
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 175
    nop

    .line 176
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 174
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 179
    nop

    .line 180
    return-object v0

    .line 178
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    throw v2
.end method

.method public static handleAftermath(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 1076
    const/4 v0, 0x0

    move-object v1, v0

    .line 1078
    .local v1, "log":Ljava/lang/String;
    :try_start_0
    sget-object v2, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    const/high16 v3, -0x10000

    const-string v4, "...\n"

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1083
    :goto_0
    goto :goto_1

    .line 1081
    :catch_0
    move-exception v2

    .line 1082
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "RecoverySystem"

    const-string v4, "Error reading recovery log"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1079
    :catch_1
    move-exception v2

    .line 1080
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "RecoverySystem"

    const-string v4, "No recovery log file"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 1085
    :goto_1
    if-eqz v1, :cond_0

    .line 1086
    invoke-static {p0}, Landroid/os/RecoverySystem;->parseLastInstallLog(Landroid/content/Context;)V

    .line 1090
    :cond_0
    sget-object v2, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 1091
    .local v2, "reservePackage":Z
    const/4 v3, 0x0

    if-nez v2, :cond_2

    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1092
    move-object v4, v0

    .line 1094
    .local v4, "filename":Ljava/lang/String;
    :try_start_1
    sget-object v5, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-static {v5, v3, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v0

    .line 1097
    goto :goto_2

    .line 1095
    :catch_2
    move-exception v0

    .line 1096
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "RecoverySystem"

    const-string v6, "Error reading uncrypt file"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1101
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v4, :cond_2

    const-string v0, "/data"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1102
    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1103
    const-string v0, "RecoverySystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1105
    :cond_1
    const-string v0, "RecoverySystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    .end local v4    # "filename":Ljava/lang/String;
    :cond_2
    :goto_3
    sget-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, "names":[Ljava/lang/String;
    nop

    .local v3, "i":I
    :goto_4
    if-eqz v0, :cond_6

    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 1118
    aget-object v4, v0, v3

    const-string v5, "last_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_5

    .line 1119
    :cond_3
    if-eqz v2, :cond_4

    aget-object v4, v0, v3

    sget-object v5, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_5

    .line 1120
    :cond_4
    if-eqz v2, :cond_5

    aget-object v4, v0, v3

    sget-object v5, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_5

    .line 1122
    :cond_5
    new-instance v4, Ljava/io/File;

    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v6, v0, v3

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 1117
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1125
    .end local v3    # "i":I
    :cond_6
    return-object v1
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;Z)V

    .line 520
    return-void
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$CleanType;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "cleanType"    # Landroid/os/RecoverySystem$CleanType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    .line 1228
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1232
    .local v0, "filename":Ljava/lang/String;
    const-string v2, "encrypted"

    const-string/jumbo v3, "ro.crypto.state"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1233
    .local v2, "encrypted":Z
    if-eqz v2, :cond_0

    .line 1234
    const-string v3, "/storage/emulated/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1235
    const-string v3, "/storage/emulated/"

    const-string v4, "/data/media/"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1239
    .end local v0    # "filename":Ljava/lang/String;
    .local v3, "filename":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    const-string v0, "/data/data/cn.nubia.systemupdate/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_2

    const-string v0, "/data/ota_package/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    :goto_1
    move v6, v0

    .line 1241
    .local v6, "fota":Z
    new-instance v0, Ljava/io/FileWriter;

    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_FILE:Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v7, v0

    .line 1243
    .local v7, "uncryptFile":Ljava/io/FileWriter;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    .line 1246
    nop

    .line 1247
    const-string v0, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " !!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const-string v0, "/data/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 1252
    const-string v3, "@/cache/recovery/block.map"

    .line 1255
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--update_package="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1256
    .local v0, "filenameArg":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--locale="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1258
    .local v8, "localeArg":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1259
    .local v9, "cleanDataArg":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1260
    .local v10, "cleanCacheArg":Ljava/lang/String;
    sget-object v11, Landroid/os/RecoverySystem$5;->$SwitchMap$android$os$RecoverySystem$CleanType:[I

    invoke-virtual/range {p2 .. p2}, Landroid/os/RecoverySystem$CleanType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    goto :goto_2

    .line 1268
    :pswitch_0
    const-string v9, "--wipe_data"

    .line 1269
    const-string v10, "--wipe_cache"

    goto :goto_2

    .line 1265
    :pswitch_1
    const-string v10, "--wipe_cache"

    .line 1266
    goto :goto_2

    .line 1262
    :pswitch_2
    const-string v9, "--wipe_data"

    .line 1263
    nop

    .line 1272
    :goto_2
    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eqz v6, :cond_4

    .line 1273
    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    aput-object v0, v14, v5

    const-string v5, "--fota"

    aput-object v5, v14, v4

    aput-object v8, v14, v13

    aput-object v9, v14, v12

    aput-object v10, v14, v11

    invoke-static {v1, v14}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_3

    .line 1275
    :cond_4
    new-array v11, v11, [Ljava/lang/String;

    aput-object v0, v11, v5

    aput-object v8, v11, v4

    aput-object v9, v11, v13

    aput-object v10, v11, v12

    invoke-static {v1, v11}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1277
    :goto_3
    return-void

    .line 1245
    .end local v0    # "filenameArg":Ljava/lang/String;
    .end local v8    # "localeArg":Ljava/lang/String;
    .end local v9    # "cleanDataArg":Ljava/lang/String;
    .end local v10    # "cleanCacheArg":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;Z)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "processed"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 541
    sget-object v2, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    monitor-enter v2

    .line 542
    :try_start_0
    sget-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 544
    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 546
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "filename":Ljava/lang/String;
    const-string v3, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " !!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v3, "_s.zip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 555
    .local v3, "securityUpdate":Z
    const-string v4, "encrypted"

    const-string/jumbo v5, "ro.crypto.state"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 556
    .local v4, "encrypted":Z
    if-eqz v4, :cond_0

    .line 557
    const-string v5, "/storage/emulated/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 558
    const-string v5, "/storage/emulated/"

    const-string v6, "/data/media/"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 562
    :cond_0
    move-object v5, v0

    .line 562
    .end local v0    # "filename":Ljava/lang/String;
    .local v5, "filename":Ljava/lang/String;
    :goto_0
    const-string v0, "/data/data/cn.nubia.systemupdate/"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_2

    const-string v0, "/data/ota_package/"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v6

    :goto_2
    move v8, v0

    .line 568
    .local v8, "fota":Z
    const-string v0, "/data/"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    .line 570
    if-eqz p2, :cond_4

    .line 571
    sget-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 572
    :cond_3
    const-string v0, "RecoverySystem"

    const-string v6, "Package claimed to have been processed but failed to find the block map file."

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Failed to find block map file"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_4
    new-instance v0, Ljava/io/FileWriter;

    sget-object v9, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, v0

    .line 579
    .local v9, "uncryptFile":Ljava/io/FileWriter;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V

    .line 582
    nop

    .line 585
    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 586
    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    if-nez v0, :cond_6

    .line 587
    :cond_5
    const-string v0, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error setting permission for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_6
    sget-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 595
    .end local v9    # "uncryptFile":Ljava/io/FileWriter;
    :goto_3
    const-string v0, "@/cache/recovery/block.map"

    move-object v5, v0

    goto :goto_4

    .line 581
    .restart local v9    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V

    throw v0

    .line 598
    .end local v9    # "uncryptFile":Ljava/io/FileWriter;
    :cond_7
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--update_package="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "filenameArg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--locale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 600
    .local v6, "localeArg":Ljava/lang/String;
    const-string v7, "--security\n"

    .line 602
    .local v7, "securityArg":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 603
    .local v9, "command":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 604
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "--security\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 607
    :cond_8
    if-eqz v8, :cond_9

    .line 608
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "--fota\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 612
    :cond_9
    const-string/jumbo v10, "recovery"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/RecoverySystem;

    .line 614
    .local v10, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v10, v9}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 619
    const-string/jumbo v11, "power"

    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 620
    .local v11, "pm":Landroid/os/PowerManager;
    const-string/jumbo v12, "recovery-update"

    .line 623
    .local v12, "reason":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "android.software.leanback"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 624
    const-string/jumbo v13, "window"

    invoke-virtual {v1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 625
    .local v13, "wm":Landroid/view/WindowManager;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getState()I

    move-result v14

    move-object v15, v0

    const/4 v0, 0x2

    .line 625
    .end local v0    # "filenameArg":Ljava/lang/String;
    .local v15, "filenameArg":Ljava/lang/String;
    if-eq v14, v0, :cond_b

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",quiescent"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .end local v13    # "wm":Landroid/view/WindowManager;
    goto :goto_5

    .line 629
    .end local v15    # "filenameArg":Ljava/lang/String;
    .restart local v0    # "filenameArg":Ljava/lang/String;
    :cond_a
    move-object v15, v0

    .line 629
    .end local v0    # "filenameArg":Ljava/lang/String;
    .restart local v15    # "filenameArg":Ljava/lang/String;
    :cond_b
    :goto_5
    invoke-virtual {v11, v12}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 631
    new-instance v0, Ljava/io/IOException;

    const-string v13, "Reboot failed (no permissions?)"

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    .end local v11    # "pm":Landroid/os/PowerManager;
    .end local v12    # "reason":Ljava/lang/String;
    .end local v15    # "filenameArg":Ljava/lang/String;
    .restart local v0    # "filenameArg":Ljava/lang/String;
    :cond_c
    move-object v15, v0

    .line 615
    .end local v0    # "filenameArg":Ljava/lang/String;
    .restart local v15    # "filenameArg":Ljava/lang/String;
    new-instance v0, Ljava/io/IOException;

    const-string v11, "Setup BCB failed"

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    .end local v3    # "securityUpdate":Z
    .end local v4    # "encrypted":Z
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "localeArg":Ljava/lang/String;
    .end local v7    # "securityArg":Ljava/lang/String;
    .end local v8    # "fota":Z
    .end local v9    # "command":Ljava/lang/String;
    .end local v10    # "rs":Landroid/os/RecoverySystem;
    .end local v15    # "filenameArg":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private static parseLastInstallLog(Landroid/content/Context;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;

    .line 962
    move-object/from16 v1, p0

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    sget-object v3, Landroid/os/RecoverySystem;->LAST_INSTALL_FILE:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v2, v0

    .line 963
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 964
    .local v0, "line":Ljava/lang/String;
    const/4 v4, -0x1

    .line 964
    .local v4, "bytesWrittenInMiB":I
    const/4 v5, -0x1

    .line 965
    .local v5, "bytesStashedInMiB":I
    const/4 v6, -0x1

    .line 966
    .local v6, "timeTotal":I
    const/4 v7, -0x1

    .line 967
    .local v7, "uncryptTime":I
    const/4 v8, -0x1

    .line 968
    .local v8, "sourceVersion":I
    const/4 v9, -0x1

    .line 969
    .local v9, "temperatureStart":I
    const/4 v10, -0x1

    .line 970
    .local v10, "temperatureEnd":I
    const/4 v11, -0x1

    .line 971
    .local v11, "temperatureMax":I
    const/4 v12, -0x1

    .line 972
    .local v12, "errorCode":I
    const/4 v13, -0x1

    move v14, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v5

    move v5, v4

    move-object v4, v0

    move v0, v13

    .line 972
    .local v0, "causeCode":I
    .local v4, "line":Ljava/lang/String;
    .local v5, "bytesWrittenInMiB":I
    .local v8, "bytesStashedInMiB":I
    .local v9, "sourceVersion":I
    .local v10, "temperatureStart":I
    .local v11, "temperatureEnd":I
    .local v12, "temperatureMax":I
    .local v14, "errorCode":I
    :goto_0
    move v15, v0

    .line 974
    .end local v0    # "causeCode":I
    .local v15, "causeCode":I
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, v0

    if-eqz v0, :cond_f

    .line 980
    const/16 v0, 0x3a

    :try_start_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move/from16 v16, v0

    .line 981
    .local v16, "numIndex":I
    move/from16 v3, v16

    if-eq v3, v13, :cond_e

    .line 981
    .end local v16    # "numIndex":I
    .local v3, "numIndex":I
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v0, v13, :cond_0

    .line 982
    nop

    .line 972
    move-object/from16 v21, v2

    move/from16 v23, v14

    goto/16 :goto_8

    .line 984
    :cond_0
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v13, v0

    .line 987
    .local v13, "numString":Ljava/lang/String;
    :try_start_3
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v19, v17

    .line 991
    .local v19, "parsedNum":J
    nop

    .line 990
    nop

    .line 993
    const/high16 v0, 0x100000

    move/from16 v16, v0

    .line 996
    .local v16, "MiB":I
    :try_start_4
    const-string v0, "bytes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_1

    .line 997
    const-wide/32 v17, 0x100000

    move-object/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v24, v13

    move/from16 v23, v14

    move-wide/from16 v2, v19

    :try_start_5
    div-long v13, v2, v17

    .line 997
    .end local v3    # "numIndex":I
    .end local v13    # "numString":Ljava/lang/String;
    .end local v14    # "errorCode":I
    .end local v19    # "parsedNum":J
    .local v2, "parsedNum":J
    .local v21, "in":Ljava/io/BufferedReader;
    .local v22, "numIndex":I
    .local v23, "errorCode":I
    .local v24, "numString":Ljava/lang/String;
    invoke-static {v13, v14}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    .line 997
    .local v0, "scaled":I
    goto :goto_1

    .line 1001
    .end local v0    # "scaled":I
    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 999
    .end local v21    # "in":Ljava/io/BufferedReader;
    .end local v22    # "numIndex":I
    .end local v23    # "errorCode":I
    .end local v24    # "numString":Ljava/lang/String;
    .local v2, "in":Ljava/io/BufferedReader;
    .restart local v3    # "numIndex":I
    .restart local v13    # "numString":Ljava/lang/String;
    .restart local v14    # "errorCode":I
    .restart local v19    # "parsedNum":J
    :cond_1
    move-object/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v24, v13

    move/from16 v23, v14

    move-wide/from16 v2, v19

    .line 999
    .end local v3    # "numIndex":I
    .end local v13    # "numString":Ljava/lang/String;
    .end local v14    # "errorCode":I
    .end local v19    # "parsedNum":J
    .local v2, "parsedNum":J
    .restart local v21    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "numIndex":I
    .restart local v23    # "errorCode":I
    .restart local v24    # "numString":Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1004
    .restart local v0    # "scaled":I
    :goto_1
    nop

    .line 1003
    nop

    .line 1006
    :try_start_6
    const-string/jumbo v13, "time"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1007
    move v6, v0

    .line 1029
    .end local v2    # "parsedNum":J
    .end local v15    # "causeCode":I
    .end local v16    # "MiB":I
    .end local v22    # "numIndex":I
    .end local v23    # "errorCode":I
    .end local v24    # "numString":Ljava/lang/String;
    .local v0, "causeCode":I
    .restart local v14    # "errorCode":I
    :cond_2
    :goto_2
    move v0, v15

    :goto_3
    move/from16 v14, v23

    goto/16 :goto_6

    .line 1008
    .end local v14    # "errorCode":I
    .local v0, "scaled":I
    .restart local v2    # "parsedNum":J
    .restart local v15    # "causeCode":I
    .restart local v16    # "MiB":I
    .restart local v22    # "numIndex":I
    .restart local v23    # "errorCode":I
    .restart local v24    # "numString":Ljava/lang/String;
    :cond_3
    const-string/jumbo v13, "uncrypt_time"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1009
    move v7, v0

    goto :goto_2

    .line 1010
    :cond_4
    const-string/jumbo v13, "source_build"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1011
    move v9, v0

    goto :goto_2

    .line 1012
    :cond_5
    const-string v13, "bytes_written"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1013
    const/4 v13, -0x1

    if-ne v5, v13, :cond_6

    .line 1014
    move v13, v0

    goto :goto_4

    :cond_6
    add-int v13, v5, v0

    :goto_4
    move v5, v13

    goto :goto_2

    .line 1015
    :cond_7
    const-string v13, "bytes_stashed"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1016
    const/4 v13, -0x1

    if-ne v8, v13, :cond_8

    .line 1017
    move v13, v0

    goto :goto_5

    :cond_8
    add-int v13, v8, v0

    :goto_5
    move v8, v13

    goto :goto_2

    .line 1018
    :cond_9
    const-string/jumbo v13, "temperature_start"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1019
    move v10, v0

    goto :goto_2

    .line 1020
    :cond_a
    const-string/jumbo v13, "temperature_end"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1021
    move v11, v0

    goto :goto_2

    .line 1022
    :cond_b
    const-string/jumbo v13, "temperature_max"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1023
    move v12, v0

    goto :goto_2

    .line 1024
    :cond_c
    const-string v13, "error"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1025
    move v13, v0

    .line 1029
    .end local v23    # "errorCode":I
    .local v13, "errorCode":I
    move v14, v13

    move v0, v15

    goto :goto_6

    .line 1026
    .end local v13    # "errorCode":I
    .restart local v23    # "errorCode":I
    :cond_d
    const-string v13, "cause"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1027
    nop

    .line 1027
    .end local v2    # "parsedNum":J
    .end local v15    # "causeCode":I
    .end local v16    # "MiB":I
    .end local v22    # "numIndex":I
    .end local v24    # "numString":Ljava/lang/String;
    .local v0, "causeCode":I
    goto :goto_3

    .line 1029
    .end local v23    # "errorCode":I
    .restart local v14    # "errorCode":I
    :goto_6
    nop

    .line 972
    move-object/from16 v2, v21

    goto :goto_9

    .line 1001
    .end local v0    # "causeCode":I
    .end local v21    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    .restart local v3    # "numIndex":I
    .local v13, "numString":Ljava/lang/String;
    .restart local v15    # "causeCode":I
    .restart local v16    # "MiB":I
    .restart local v19    # "parsedNum":J
    :catch_1
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v24, v13

    move/from16 v23, v14

    move-wide/from16 v2, v19

    .line 1002
    .end local v3    # "numIndex":I
    .end local v13    # "numString":Ljava/lang/String;
    .end local v14    # "errorCode":I
    .end local v19    # "parsedNum":J
    .local v0, "ignored":Ljava/lang/ArithmeticException;
    .local v2, "parsedNum":J
    .restart local v21    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "numIndex":I
    .restart local v23    # "errorCode":I
    .restart local v24    # "numString":Ljava/lang/String;
    :goto_7
    const-string v13, "RecoverySystem"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v0

    const-string v0, "Number overflows in "

    .line 1002
    .end local v0    # "ignored":Ljava/lang/ArithmeticException;
    .local v25, "ignored":Ljava/lang/ArithmeticException;
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    goto :goto_8

    .line 988
    .end local v16    # "MiB":I
    .end local v21    # "in":Ljava/io/BufferedReader;
    .end local v22    # "numIndex":I
    .end local v23    # "errorCode":I
    .end local v24    # "numString":Ljava/lang/String;
    .end local v25    # "ignored":Ljava/lang/ArithmeticException;
    .local v2, "in":Ljava/io/BufferedReader;
    .restart local v3    # "numIndex":I
    .restart local v13    # "numString":Ljava/lang/String;
    .restart local v14    # "errorCode":I
    :catch_2
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v24, v13

    move/from16 v23, v14

    .line 988
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "numIndex":I
    .end local v13    # "numString":Ljava/lang/String;
    .end local v14    # "errorCode":I
    .restart local v21    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "numIndex":I
    .restart local v23    # "errorCode":I
    .restart local v24    # "numString":Ljava/lang/String;
    move-object v2, v0

    .line 989
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to parse numbers in "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    goto :goto_8

    .line 972
    .end local v0    # "ignored":Ljava/lang/NumberFormatException;
    .end local v21    # "in":Ljava/io/BufferedReader;
    .end local v22    # "numIndex":I
    .end local v23    # "errorCode":I
    .end local v24    # "numString":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "errorCode":I
    :cond_e
    move-object/from16 v21, v2

    move/from16 v23, v14

    .line 972
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v14    # "errorCode":I
    .restart local v21    # "in":Ljava/io/BufferedReader;
    .restart local v23    # "errorCode":I
    :goto_8
    move v0, v15

    move-object/from16 v2, v21

    move/from16 v14, v23

    .line 972
    .end local v15    # "causeCode":I
    .end local v21    # "in":Ljava/io/BufferedReader;
    .end local v23    # "errorCode":I
    .local v0, "causeCode":I
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "errorCode":I
    :goto_9
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 1063
    .end local v0    # "causeCode":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "bytesWrittenInMiB":I
    .end local v6    # "timeTotal":I
    .end local v7    # "uncryptTime":I
    .end local v8    # "bytesStashedInMiB":I
    .end local v9    # "sourceVersion":I
    .end local v10    # "temperatureStart":I
    .end local v11    # "temperatureEnd":I
    .end local v12    # "temperatureMax":I
    .end local v14    # "errorCode":I
    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    .line 1063
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v21    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_d

    .line 962
    .end local v21    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    move-object v3, v0

    .line 962
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v21    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_c

    .line 1032
    .end local v21    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "bytesWrittenInMiB":I
    .restart local v6    # "timeTotal":I
    .restart local v7    # "uncryptTime":I
    .restart local v8    # "bytesStashedInMiB":I
    .restart local v9    # "sourceVersion":I
    .restart local v10    # "temperatureStart":I
    .restart local v11    # "temperatureEnd":I
    .restart local v12    # "temperatureMax":I
    .restart local v14    # "errorCode":I
    .restart local v15    # "causeCode":I
    :cond_f
    move-object/from16 v21, v2

    move/from16 v23, v14

    .line 1032
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v14    # "errorCode":I
    .restart local v21    # "in":Ljava/io/BufferedReader;
    .restart local v23    # "errorCode":I
    const/4 v2, -0x1

    if-eq v6, v2, :cond_10

    .line 1033
    const-string/jumbo v0, "ota_time_total"

    invoke-static {v1, v0, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_a

    .line 1063
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "bytesWrittenInMiB":I
    .end local v6    # "timeTotal":I
    .end local v7    # "uncryptTime":I
    .end local v8    # "bytesStashedInMiB":I
    .end local v9    # "sourceVersion":I
    .end local v10    # "temperatureStart":I
    .end local v11    # "temperatureEnd":I
    .end local v12    # "temperatureMax":I
    .end local v15    # "causeCode":I
    .end local v23    # "errorCode":I
    :catchall_1
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_b

    .line 962
    :catch_4
    move-exception v0

    move-object v3, v0

    move-object/from16 v2, v21

    goto :goto_c

    .line 1035
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "bytesWrittenInMiB":I
    .restart local v6    # "timeTotal":I
    .restart local v7    # "uncryptTime":I
    .restart local v8    # "bytesStashedInMiB":I
    .restart local v9    # "sourceVersion":I
    .restart local v10    # "temperatureStart":I
    .restart local v11    # "temperatureEnd":I
    .restart local v12    # "temperatureMax":I
    .restart local v15    # "causeCode":I
    .restart local v23    # "errorCode":I
    :cond_10
    :goto_a
    const/4 v2, -0x1

    if-eq v7, v2, :cond_11

    .line 1036
    const-string/jumbo v0, "ota_uncrypt_time"

    invoke-static {v1, v0, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1038
    :cond_11
    const/4 v2, -0x1

    if-eq v9, v2, :cond_12

    .line 1039
    const-string/jumbo v0, "ota_source_version"

    invoke-static {v1, v0, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1041
    :cond_12
    const/4 v2, -0x1

    if-eq v5, v2, :cond_13

    .line 1042
    const-string/jumbo v0, "ota_written_in_MiBs"

    invoke-static {v1, v0, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1044
    :cond_13
    const/4 v2, -0x1

    if-eq v8, v2, :cond_14

    .line 1045
    const-string/jumbo v0, "ota_stashed_in_MiBs"

    invoke-static {v1, v0, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1047
    :cond_14
    const/4 v2, -0x1

    if-eq v10, v2, :cond_15

    .line 1048
    const-string/jumbo v0, "ota_temperature_start"

    invoke-static {v1, v0, v10}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1050
    :cond_15
    const/4 v2, -0x1

    if-eq v11, v2, :cond_16

    .line 1051
    const-string/jumbo v0, "ota_temperature_end"

    invoke-static {v1, v0, v11}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1053
    :cond_16
    const/4 v2, -0x1

    if-eq v12, v2, :cond_17

    .line 1054
    const-string/jumbo v0, "ota_temperature_max"

    invoke-static {v1, v0, v12}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1056
    :cond_17
    move/from16 v14, v23

    const/4 v2, -0x1

    if-eq v14, v2, :cond_18

    .line 1057
    .end local v23    # "errorCode":I
    .restart local v14    # "errorCode":I
    const-string/jumbo v0, "ota_non_ab_error_code"

    invoke-static {v1, v0, v14}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1059
    :cond_18
    const/4 v2, -0x1

    if-eq v15, v2, :cond_19

    .line 1060
    const-string/jumbo v0, "ota_non_ab_cause_code"

    invoke-static {v1, v0, v15}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1063
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "bytesWrittenInMiB":I
    .end local v6    # "timeTotal":I
    .end local v7    # "uncryptTime":I
    .end local v8    # "bytesStashedInMiB":I
    .end local v9    # "sourceVersion":I
    .end local v10    # "temperatureStart":I
    .end local v11    # "temperatureEnd":I
    .end local v12    # "temperatureMax":I
    .end local v14    # "errorCode":I
    .end local v15    # "causeCode":I
    :cond_19
    move-object/from16 v2, v21

    const/4 v3, 0x0

    :try_start_7
    invoke-static {v3, v2}, Landroid/os/RecoverySystem;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1065
    .end local v21    # "in":Ljava/io/BufferedReader;
    goto :goto_e

    .line 1063
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v0

    :goto_b
    const/4 v3, 0x0

    goto :goto_d

    .line 962
    :catch_5
    move-exception v0

    move-object v3, v0

    :goto_c
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1063
    :catchall_3
    move-exception v0

    :goto_d
    :try_start_9
    invoke-static {v3, v2}, Landroid/os/RecoverySystem;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 1063
    .end local v2    # "in":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    .line 1064
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "RecoverySystem"

    const-string v3, "Failed to read lines in last_install"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    return-void
.end method

.method public static processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V

    .line 500
    return-void
.end method

.method public static processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    return-void

    .line 444
    :cond_0
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 445
    .local v1, "rs":Landroid/os/RecoverySystem;
    const/4 v2, 0x0

    .line 446
    .local v2, "progressListener":Landroid/os/IRecoverySystemProgressListener;
    if-eqz p2, :cond_2

    .line 448
    if-eqz p3, :cond_1

    .line 449
    move-object v3, p3

    .line 449
    .local v3, "progressHandler":Landroid/os/Handler;
    goto :goto_0

    .line 451
    .end local v3    # "progressHandler":Landroid/os/Handler;
    :cond_1
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 453
    .restart local v3    # "progressHandler":Landroid/os/Handler;
    :goto_0
    new-instance v4, Landroid/os/RecoverySystem$2;

    invoke-direct {v4, v3, p2}, Landroid/os/RecoverySystem$2;-><init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V

    move-object v2, v4

    .line 475
    .end local v3    # "progressHandler":Landroid/os/Handler;
    :cond_2
    invoke-direct {v1, v0, v2}, Landroid/os/RecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 478
    return-void

    .line 476
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "process package failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static readAndVerifyPackageCompatibilityEntry(Ljava/io/File;)Z
    .locals 5
    .param p0, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 391
    .local v0, "zip":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "compatibility.zip"

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_0

    .line 393
    const/4 v3, 0x1

    .line 397
    invoke-static {v1, v0}, Landroid/os/RecoverySystem;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 393
    return v3

    .line 395
    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 396
    .local v3, "inputStream":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    invoke-static {v1, v0}, Landroid/os/RecoverySystem;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 396
    return v4

    .line 397
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 390
    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    :goto_0
    invoke-static {v1, v0}, Landroid/os/RecoverySystem;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 877
    const/4 v0, 0x0

    .line 878
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 883
    .local v1, "localeArg":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "--prompt_and_wipe_data"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 884
    return-void
.end method

.method private rebootRecoveryWithCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .line 1186
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    goto :goto_0

    .line 1187
    :catch_0
    move-exception v0

    .line 1189
    :goto_0
    return-void
.end method

.method public static rebootWipeAb(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 923
    const/4 v0, 0x0

    .line 924
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, "filename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--wipe_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 931
    .local v3, "localeArg":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "--wipe_ab"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {p0, v4}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 891
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 892
    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 896
    const/4 v0, 0x0

    .line 897
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 901
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, "localeArg":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "--wipe_cache"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 903
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 712
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 716
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 718
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 723
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 725
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 731
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "wipeEuicc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v9, p0

    .line 757
    const-string/jumbo v0, "user"

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/UserManager;

    .line 758
    .local v10, "um":Landroid/os/UserManager;
    if-nez p3, :cond_1

    const-string/jumbo v0, "no_factory_reset"

    invoke-virtual {v10, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 759
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wiping data is not allowed for this user."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_1
    :goto_0
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    move-object v11, v0

    .line 763
    .local v11, "condition":Landroid/os/ConditionVariable;
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 764
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v0, 0x11000000

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 766
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v3, "android.permission.MASTER_CLEAR"

    new-instance v4, Landroid/os/RecoverySystem$3;

    invoke-direct {v4, v11}, Landroid/os/RecoverySystem$3;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, v12

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 776
    invoke-virtual {v11}, Landroid/os/ConditionVariable;->block()V

    .line 778
    if-eqz p4, :cond_2

    .line 779
    const-string v1, "android"

    invoke-static {v9, v1}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    .line 782
    :cond_2
    const/4 v1, 0x0

    .line 783
    .local v1, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 784
    const-string v1, "--shutdown_after"

    .line 787
    :cond_3
    const/4 v3, 0x0

    .line 788
    .local v3, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 789
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 792
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--locale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 793
    .local v4, "localeArg":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    const-string v7, "--wipe_data"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v4, v5, v6

    invoke-static {v9, v5}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method private static recursiveDelete(Ljava/io/File;)V
    .locals 4
    .param p0, "name"    # Ljava/io/File;

    .line 1132
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, "files":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1135
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1136
    .local v2, "f":Ljava/io/File;
    invoke-static {v2}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 1134
    .end local v2    # "f":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1140
    .end local v0    # "files":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1141
    const-string v0, "RecoverySystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t delete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1143
    :cond_1
    const-string v0, "RecoverySystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :goto_1
    return-void
.end method

.method private static sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .line 1196
    const/16 v0, 0x3f

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1197
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1198
    return-object p0
.end method

.method public static scheduleUpdateOnBoot(Landroid/content/Context;Ljava/io/File;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 652
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "_s.zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 657
    .local v1, "securityUpdate":Z
    const-string v2, "/data/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    const-string v0, "@/cache/recovery/block.map"

    .line 661
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--update_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, "localeArg":Ljava/lang/String;
    const-string v4, "--security\n"

    .line 665
    .local v4, "securityArg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 666
    .local v5, "command":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 667
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "--security\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 670
    :cond_1
    const-string/jumbo v6, "recovery"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RecoverySystem;

    .line 671
    .local v6, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v6, v5}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 674
    return-void

    .line 672
    :cond_2
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "schedule update on boot failed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private setupBcb(Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .line 1163
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1164
    :catch_0
    move-exception v0

    .line 1166
    const/4 v0, 0x0

    return v0
.end method

.method private uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .locals 1
    .param p1, "packageFile"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    .line 1152
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1153
    :catch_0
    move-exception v0

    .line 1155
    const/4 v0, 0x0

    return v0
.end method

.method public static verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .locals 31
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p2, "deviceCertsZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v9, p1

    .line 214
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 216
    .local v10, "fileLen":J
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    move-object/from16 v12, p0

    invoke-direct {v0, v12, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v13, v0

    .line 218
    .local v13, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 219
    .local v5, "startTimeMillis":J
    const/4 v0, 0x0

    if-eqz v9, :cond_0

    .line 220
    invoke-interface {v9, v0}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 223
    :cond_0
    const-wide/16 v1, 0x6

    sub-long v1, v10, v1

    invoke-virtual {v13, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 224
    const/4 v1, 0x6

    new-array v2, v1, [B

    move-object v14, v2

    .line 225
    .local v14, "footer":[B
    invoke-virtual {v13, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 227
    const/4 v2, 0x2

    aget-byte v3, v14, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    const/4 v3, 0x3

    aget-byte v7, v14, v3

    if-ne v7, v4, :cond_f

    .line 231
    const/4 v4, 0x4

    aget-byte v7, v14, v4

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x5

    aget-byte v15, v14, v8

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v15, v7

    .line 232
    .local v15, "commentSize":I
    aget-byte v7, v14, v0

    and-int/lit16 v7, v7, 0xff

    const/16 v16, 0x1

    aget-byte v4, v14, v16

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v7, v4

    .line 234
    .local v7, "signatureStart":I
    add-int/lit8 v4, v15, 0x16

    new-array v4, v4, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 235
    .local v4, "eocd":[B
    add-int/lit8 v1, v15, 0x16

    int-to-long v8, v1

    sub-long v8, v10, v8

    :try_start_1
    invoke-virtual {v13, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 236
    invoke-virtual {v13, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 240
    aget-byte v1, v4, v0

    const/16 v8, 0x50

    if-ne v1, v8, :cond_e

    aget-byte v1, v4, v16

    const/16 v9, 0x4b

    if-ne v1, v9, :cond_e

    aget-byte v1, v4, v2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_e

    aget-byte v1, v4, v3

    const/4 v2, 0x6

    if-ne v1, v2, :cond_e

    .line 245
    const/16 v17, 0x4

    .line 245
    .local v17, "i":I
    :goto_0
    move/from16 v1, v17

    .line 245
    .end local v17    # "i":I
    .local v1, "i":I
    array-length v2, v4

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 246
    aget-byte v2, v4, v1

    if-ne v2, v8, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v4, v2

    if-ne v2, v9, :cond_2

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, v4, v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, v4, v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 248
    :cond_1
    new-instance v0, Ljava/security/SignatureException;

    const-string v2, "EOCD marker found after start of EOCD"

    invoke-direct {v0, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_2
    const/4 v3, 0x6

    :goto_1
    add-int/lit8 v17, v1, 0x1

    .line 245
    .end local v1    # "i":I
    .restart local v17    # "i":I
    const/4 v3, 0x3

    goto :goto_0

    .line 253
    .end local v17    # "i":I
    :cond_3
    new-instance v1, Lsun/security/pkcs/PKCS7;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v3, v15, 0x16

    sub-int/2addr v3, v7

    invoke-direct {v2, v4, v3, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v1, v2}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    move-object v9, v1

    .line 258
    .local v9, "block":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v9}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    move-object v2, v1

    .line 259
    .local v2, "certificates":[Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_d

    array-length v1, v2

    if-eqz v1, :cond_d

    .line 262
    aget-object v1, v2, v0

    move-object v3, v1

    .line 263
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 265
    .local v1, "signatureKey":Ljava/security/PublicKey;
    invoke-virtual {v9}, Lsun/security/pkcs/PKCS7;->getSignerInfos()[Lsun/security/pkcs/SignerInfo;

    move-result-object v8

    .line 266
    .local v8, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    if-eqz v8, :cond_c

    array-length v0, v8

    if-eqz v0, :cond_c

    .line 269
    const/4 v0, 0x0

    aget-object v0, v8, v0

    .line 273
    .local v0, "signerInfo":Lsun/security/pkcs/SignerInfo;
    const/16 v16, 0x0

    .line 275
    .local v16, "verified":Z
    if-nez p2, :cond_4

    sget-object v18, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 274
    move-object/from16 v24, v2

    move-object/from16 v2, v18

    goto :goto_2

    :cond_4
    move-object/from16 v24, v2

    move-object/from16 v2, p2

    .line 274
    .end local v2    # "certificates":[Ljava/security/cert/X509Certificate;
    .local v24, "certificates":[Ljava/security/cert/X509Certificate;
    :goto_2
    invoke-static {v2}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v2

    .line 276
    .local v2, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v25, v3

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 276
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .local v25, "cert":Ljava/security/cert/X509Certificate;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/security/cert/X509Certificate;

    move-object/from16 v26, v18

    .line 277
    .local v26, "c":Ljava/security/cert/X509Certificate;
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v2, v26

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 277
    .end local v26    # "c":Ljava/security/cert/X509Certificate;
    .local v2, "c":Ljava/security/cert/X509Certificate;
    .local v27, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 278
    const/16 v16, 0x1

    .line 279
    goto :goto_4

    .line 281
    .end local v2    # "c":Ljava/security/cert/X509Certificate;
    :cond_5
    nop

    .line 276
    move-object/from16 v2, v27

    move-object/from16 v3, v28

    goto :goto_3

    .line 282
    .end local v27    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .local v2, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    :cond_6
    move-object/from16 v27, v2

    .line 282
    .end local v2    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v27    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    :goto_4
    if-eqz v16, :cond_b

    .line 288
    const-wide/16 v2, 0x0

    invoke-virtual {v13, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 289
    move-object/from16 v18, v8

    move-object/from16 v2, p1

    move-object v8, v2

    .line 290
    .local v8, "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .local v18, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    :try_start_2
    new-instance v3, Landroid/os/RecoverySystem$1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v1

    move-object v1, v3

    .line 290
    .end local v1    # "signatureKey":Ljava/security/PublicKey;
    .local v19, "signatureKey":Ljava/security/PublicKey;
    move-object v12, v3

    move-object/from16 v29, v14

    move-object/from16 v20, v24

    move-object/from16 v21, v25

    move-object/from16 v22, v27

    move-object v14, v2

    move-wide v2, v10

    .line 290
    .end local v14    # "footer":[B
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v25    # "cert":Ljava/security/cert/X509Certificate;
    .end local v27    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .local v20, "certificates":[Ljava/security/cert/X509Certificate;
    .local v21, "cert":Ljava/security/cert/X509Certificate;
    .local v22, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .local v29, "footer":[B
    move-object/from16 v23, v4

    move v4, v15

    .line 290
    .end local v4    # "eocd":[B
    .local v23, "eocd":[B
    move/from16 v24, v7

    move-object v7, v13

    .line 290
    .end local v7    # "signatureStart":I
    .local v24, "signatureStart":I
    :try_start_3
    invoke-direct/range {v1 .. v8}, Landroid/os/RecoverySystem$1;-><init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V

    invoke-virtual {v9, v0, v12}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v1

    .line 335
    .local v1, "verifyResult":Lsun/security/pkcs/SignerInfo;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    .line 336
    .local v2, "interrupted":Z
    if-eqz v14, :cond_7

    .line 337
    const/16 v3, 0x64

    invoke-interface {v14, v3}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 340
    :cond_7
    if-nez v2, :cond_a

    .line 344
    if-eqz v1, :cond_9

    .line 348
    .end local v0    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v1    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .end local v2    # "interrupted":Z
    .end local v5    # "startTimeMillis":J
    .end local v8    # "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .end local v9    # "block":Lsun/security/pkcs/PKCS7;
    .end local v15    # "commentSize":I
    .end local v16    # "verified":Z
    .end local v18    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v21    # "cert":Ljava/security/cert/X509Certificate;
    .end local v22    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v23    # "eocd":[B
    .end local v24    # "signatureStart":I
    .end local v29    # "footer":[B
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 349
    nop

    .line 352
    invoke-static/range {p0 .. p0}, Landroid/os/RecoverySystem;->readAndVerifyPackageCompatibilityEntry(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 355
    return-void

    .line 353
    :cond_8
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "package compatibility verification failed"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    .restart local v0    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v1    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .restart local v2    # "interrupted":Z
    .restart local v5    # "startTimeMillis":J
    .restart local v8    # "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .restart local v9    # "block":Lsun/security/pkcs/PKCS7;
    .restart local v15    # "commentSize":I
    .restart local v16    # "verified":Z
    .restart local v18    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v19    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v21    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v22    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v23    # "eocd":[B
    .restart local v24    # "signatureStart":I
    .restart local v29    # "footer":[B
    :cond_9
    :try_start_4
    new-instance v3, Ljava/security/SignatureException;

    const-string/jumbo v4, "signature digest verification failed"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 341
    :cond_a
    new-instance v3, Ljava/security/SignatureException;

    const-string/jumbo v4, "verification was interrupted"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 348
    .end local v0    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v1    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .end local v2    # "interrupted":Z
    .end local v5    # "startTimeMillis":J
    .end local v8    # "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .end local v9    # "block":Lsun/security/pkcs/PKCS7;
    .end local v15    # "commentSize":I
    .end local v16    # "verified":Z
    .end local v18    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v21    # "cert":Ljava/security/cert/X509Certificate;
    .end local v22    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v23    # "eocd":[B
    .end local v24    # "signatureStart":I
    .end local v29    # "footer":[B
    :catchall_0
    move-exception v0

    move-object v14, v2

    goto/16 :goto_5

    .line 283
    .restart local v0    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .local v1, "signatureKey":Ljava/security/PublicKey;
    .restart local v4    # "eocd":[B
    .restart local v5    # "startTimeMillis":J
    .restart local v7    # "signatureStart":I
    .local v8, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v9    # "block":Lsun/security/pkcs/PKCS7;
    .restart local v14    # "footer":[B
    .restart local v15    # "commentSize":I
    .restart local v16    # "verified":Z
    .local v24, "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v25    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v27    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    :cond_b
    move-object/from16 v19, v1

    move-object/from16 v23, v4

    move-object/from16 v18, v8

    move-object/from16 v29, v14

    move-object/from16 v20, v24

    move-object/from16 v21, v25

    move-object/from16 v22, v27

    move-object/from16 v14, p1

    move/from16 v24, v7

    .end local v1    # "signatureKey":Ljava/security/PublicKey;
    .end local v4    # "eocd":[B
    .end local v7    # "signatureStart":I
    .end local v8    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v14    # "footer":[B
    .end local v25    # "cert":Ljava/security/cert/X509Certificate;
    .end local v27    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v18    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v19    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v21    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v22    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v23    # "eocd":[B
    .local v24, "signatureStart":I
    .restart local v29    # "footer":[B
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "signature doesn\'t match any trusted key"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    .end local v0    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v16    # "verified":Z
    .end local v18    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v21    # "cert":Ljava/security/cert/X509Certificate;
    .end local v22    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v23    # "eocd":[B
    .end local v24    # "signatureStart":I
    .end local v29    # "footer":[B
    .restart local v1    # "signatureKey":Ljava/security/PublicKey;
    .local v2, "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v3    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "eocd":[B
    .restart local v7    # "signatureStart":I
    .restart local v8    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v14    # "footer":[B
    :cond_c
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move/from16 v24, v7

    move-object/from16 v18, v8

    move-object/from16 v29, v14

    move-object/from16 v14, p1

    .end local v1    # "signatureKey":Ljava/security/PublicKey;
    .end local v2    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "eocd":[B
    .end local v7    # "signatureStart":I
    .end local v8    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v14    # "footer":[B
    .restart local v18    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v19    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v21    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v23    # "eocd":[B
    .restart local v24    # "signatureStart":I
    .restart local v29    # "footer":[B
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "signature contains no signedData"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    .end local v18    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v21    # "cert":Ljava/security/cert/X509Certificate;
    .end local v23    # "eocd":[B
    .end local v24    # "signatureStart":I
    .end local v29    # "footer":[B
    .restart local v2    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "eocd":[B
    .restart local v7    # "signatureStart":I
    .restart local v14    # "footer":[B
    :cond_d
    move-object/from16 v20, v2

    move-object/from16 v23, v4

    move/from16 v24, v7

    move-object/from16 v29, v14

    move-object/from16 v14, p1

    .line 260
    .end local v2    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v4    # "eocd":[B
    .end local v7    # "signatureStart":I
    .end local v14    # "footer":[B
    .restart local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v23    # "eocd":[B
    .restart local v24    # "signatureStart":I
    .restart local v29    # "footer":[B
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "signature contains no certificates"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    .end local v9    # "block":Lsun/security/pkcs/PKCS7;
    .end local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v23    # "eocd":[B
    .end local v24    # "signatureStart":I
    .end local v29    # "footer":[B
    .restart local v4    # "eocd":[B
    .restart local v7    # "signatureStart":I
    .restart local v14    # "footer":[B
    :cond_e
    move-object/from16 v23, v4

    move/from16 v24, v7

    move-object/from16 v29, v14

    move-object/from16 v14, p1

    .line 242
    .end local v4    # "eocd":[B
    .end local v7    # "signatureStart":I
    .end local v14    # "footer":[B
    .restart local v23    # "eocd":[B
    .restart local v24    # "signatureStart":I
    .restart local v29    # "footer":[B
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "no signature in file (bad footer)"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    .end local v5    # "startTimeMillis":J
    .end local v15    # "commentSize":I
    .end local v23    # "eocd":[B
    .end local v24    # "signatureStart":I
    .end local v29    # "footer":[B
    :catchall_1
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_5

    .line 228
    .restart local v5    # "startTimeMillis":J
    .restart local v14    # "footer":[B
    :cond_f
    move-object/from16 v29, v14

    move-object v14, v9

    .line 228
    .end local v14    # "footer":[B
    .restart local v29    # "footer":[B
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "no signature in file (no footer)"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 348
    .end local v5    # "startTimeMillis":J
    .end local v29    # "footer":[B
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v14, v9

    :goto_5
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method public static verifyPackageCompatibility(Ljava/io/File;)Z
    .locals 3
    .param p0, "compatibilityFile"    # Ljava/io/File;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 413
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    invoke-static {v1, v0}, Landroid/os/RecoverySystem;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 413
    return v2

    .line 414
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 412
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    :goto_0
    invoke-static {v1, v0}, Landroid/os/RecoverySystem;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static verifyPackageCompatibility(Ljava/io/InputStream;)Z
    .locals 8
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 366
    .local v1, "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v3, v2

    .line 366
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    .line 367
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    .line 368
    .local v4, "entrySize":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    .line 372
    long-to-int v2, v4

    new-array v2, v2, [B

    .line 373
    .local v2, "bytes":[B
    invoke-static {v1, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 374
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v2    # "bytes":[B
    .end local v4    # "entrySize":J
    goto :goto_0

    .line 369
    .restart local v4    # "entrySize":J
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid entry size ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ") in the compatibility file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    .end local v4    # "entrySize":J
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 379
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Landroid/os/VintfObject;->verify([Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 377
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "no entries found in the compatibility file"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 804
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 805
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v0, "euicc_provisioned"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 808
    const-string v0, "RecoverySystem"

    const-string v3, "Skipping eUICC wipe/retain as it is not provisioned"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return v4

    .line 812
    :cond_0
    const-string v0, "euicc"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/telephony/euicc/EuiccManager;

    .line 814
    .local v5, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 815
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v4, v0

    .line 816
    .local v4, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v6, v0

    .line 818
    .local v6, "wipingSucceeded":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v0, Landroid/os/RecoverySystem$4;

    invoke-direct {v0, v6, v4}, Landroid/os/RecoverySystem$4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    move-object v7, v0

    .line 836
    .local v7, "euiccWipeFinishReceiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.android.internal.action.EUICC_FACTORY_RESET"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 837
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v9, p1

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    const/high16 v0, 0x8000000

    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v1, v3, v8, v0, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 840
    .local v10, "callbackIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v11, v0

    .line 841
    .local v11, "filterConsent":Landroid/content/IntentFilter;
    const-string v0, "com.android.internal.action.EUICC_FACTORY_RESET"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 842
    new-instance v0, Landroid/os/HandlerThread;

    const-string v12, "euiccWipeFinishReceiverThread"

    invoke-direct {v0, v12}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 843
    .local v12, "euiccHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v12}, Landroid/os/HandlerThread;->start()V

    .line 844
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v0, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v13, v0

    .line 845
    .local v13, "euiccHandler":Landroid/os/Handler;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v14, 0x0

    .line 846
    invoke-virtual {v0, v7, v11, v14, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 847
    invoke-virtual {v5, v10}, Landroid/telephony/euicc/EuiccManager;->eraseSubscriptions(Landroid/app/PendingIntent;)V

    .line 849
    nop

    .line 850
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v14, "euicc_factory_reset_timeout_millis"
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v4

    const-wide/16 v3, 0x7530

    .line 849
    .end local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v16, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :try_start_1
    invoke-static {v0, v14, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 853
    .local v3, "waitingTimeMillis":J
    const-wide/16 v17, 0x1388

    cmp-long v0, v3, v17

    if-gez v0, :cond_1

    .line 854
    const-wide/16 v3, 0x1388

    goto :goto_0

    .line 855
    :cond_1
    const-wide/32 v17, 0xea60

    cmp-long v0, v3, v17

    if-lez v0, :cond_2

    .line 856
    const-wide/32 v3, 0xea60

    .line 858
    :cond_2
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v14, v16

    :try_start_2
    invoke-virtual {v14, v3, v4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .end local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v14, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    if-nez v0, :cond_3

    .line 859
    const-string v0, "RecoverySystem"

    const-string v15, "Timeout wiping eUICC data."

    invoke-static {v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 860
    nop

    .line 867
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 860
    const/4 v15, 0x0

    return v15

    .line 867
    .end local v3    # "waitingTimeMillis":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 868
    nop

    .line 869
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    .line 862
    :catch_0
    move-exception v0

    goto :goto_1

    .line 867
    .end local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v0

    move-object/from16 v14, v16

    .end local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_2

    .line 862
    .end local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catch_1
    move-exception v0

    move-object/from16 v14, v16

    .end local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_1

    .line 867
    .end local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catchall_1
    move-exception v0

    move-object v14, v4

    .end local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_2

    .line 862
    .end local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catch_2
    move-exception v0

    move-object v14, v4

    .line 863
    .end local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 864
    const-string v3, "RecoverySystem"

    const-string v4, "Wiping eUICC data interrupted"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 865
    nop

    .line 867
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 865
    const/4 v3, 0x0

    return v3

    .line 867
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v0

    .line 871
    .end local v6    # "wipingSucceeded":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v7    # "euiccWipeFinishReceiver":Landroid/content/BroadcastReceiver;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "callbackIntent":Landroid/app/PendingIntent;
    .end local v11    # "filterConsent":Landroid/content/IntentFilter;
    .end local v12    # "euiccHandlerThread":Landroid/os/HandlerThread;
    .end local v13    # "euiccHandler":Landroid/os/Handler;
    .end local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :cond_4
    move-object/from16 v9, p1

    const/4 v3, 0x0

    return v3
.end method
