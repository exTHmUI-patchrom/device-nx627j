.class public Lcom/android/server/backup/restore/PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;
    }
.end annotation


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mAppVersion:J

.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

.field private mBytes:J

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentPassword:Ljava/lang/String;

.field private final mDecryptPassword:Ljava/lang/String;

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field private final mInputFile:Landroid/os/ParcelFileDescriptor;

.field private final mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerBackupAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "decryptPassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p6, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 100
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 101
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mWidgetData:[B

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    .line 144
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    .line 149
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 150
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 151
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 153
    iput-object p5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 154
    iput-object p6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 156
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->makeMetadataAgent()Lcom/android/server/backup/PackageManagerBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageManagerBackupAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 157
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 158
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 159
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-direct {v0, p1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 160
    nop

    .line 161
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    const-string v1, "Timeout parameters cannot be null"

    .line 160
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 166
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "com.android.providers.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method static synthetic access$014(Lcom/android/server/backup/restore/PerformAdbRestoreTask;J)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/backup/restore/PerformAdbRestoreTask;
    .param p1, "x1"    # J

    .line 85
    iget-wide v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    return-wide v0
.end method

.method private static attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .locals 20
    .param p0, "decryptPassword"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "userSalt"    # [B
    .param p3, "ckSalt"    # [B
    .param p4, "rounds"    # I
    .param p5, "userIvHex"    # Ljava/lang/String;
    .param p6, "masterKeyBlobHex"    # Ljava/lang/String;
    .param p7, "rawInStream"    # Ljava/io/InputStream;
    .param p8, "doLog"    # Z

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 322
    const/4 v0, 0x0

    move-object v3, v0

    .line 325
    .local v3, "result":Ljava/io/InputStream;
    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_12

    .line 326
    .local v0, "c":Ljavax/crypto/Cipher;
    nop

    .line 327
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :try_start_1
    invoke-static {v1, v4, v5, v2}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 329
    .local v6, "userKey":Ljavax/crypto/SecretKey;
    invoke-static/range {p5 .. p5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 330
    .local v7, "IV":[B
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 331
    .local v8, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    .line 332
    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v10

    const-string v11, "AES"

    invoke-direct {v9, v10, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 331
    const/4 v10, 0x2

    invoke-virtual {v0, v10, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 334
    invoke-static/range {p6 .. p6}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 335
    .local v9, "mkCipher":[B
    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v11

    .line 338
    .local v11, "mkBlob":[B
    const/4 v12, 0x0

    .line 339
    .local v12, "offset":I
    add-int/lit8 v13, v12, 0x1

    .local v13, "offset":I
    aget-byte v12, v11, v12

    .line 340
    .local v12, "len":I
    add-int v14, v13, v12

    invoke-static {v11, v13, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    move-object v7, v14

    .line 341
    add-int/2addr v13, v12

    .line 343
    add-int/lit8 v14, v13, 0x1

    .local v14, "offset":I
    aget-byte v13, v11, v13

    .end local v13    # "offset":I
    move v12, v13

    .line 344
    add-int v13, v14, v12

    invoke-static {v11, v14, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 346
    .local v13, "mk":[B
    add-int/2addr v14, v12

    .line 348
    add-int/lit8 v10, v14, 0x1

    .local v10, "offset":I
    aget-byte v14, v11, v14

    .end local v14    # "offset":I
    move v12, v14

    .line 349
    add-int v14, v10, v12

    invoke-static {v11, v10, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_c

    .line 353
    .local v14, "mkChecksum":[B
    move-object v15, v3

    move-object/from16 v3, p3

    :try_start_2
    invoke-static {v1, v13, v3, v2}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v16

    .end local v3    # "result":Ljava/io/InputStream;
    .local v15, "result":Ljava/io/InputStream;
    move-object/from16 v17, v16

    .line 355
    .local v17, "calculatedCk":[B
    move-object/from16 v1, v17

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v16
    :try_end_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_6

    .end local v17    # "calculatedCk":[B
    .local v1, "calculatedCk":[B
    if-eqz v16, :cond_0

    .line 356
    move-object/from16 v18, v1

    :try_start_3
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .end local v1    # "calculatedCk":[B
    .local v18, "calculatedCk":[B
    invoke-direct {v1, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 357
    .end local v8    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .local v1, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v8, v13, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v8, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 361
    new-instance v2, Ljavax/crypto/CipherInputStream;
    :try_end_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v8, p7

    :try_start_4
    invoke-direct {v2, v8, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 393
    .end local v15    # "result":Ljava/io/InputStream;
    .local v2, "result":Ljava/io/InputStream;
    move-object v15, v2

    goto :goto_0

    .line 389
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v1    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v2    # "result":Ljava/io/InputStream;
    .end local v6    # "userKey":Ljavax/crypto/SecretKey;
    .end local v7    # "IV":[B
    .end local v9    # "mkCipher":[B
    .end local v10    # "offset":I
    .end local v11    # "mkBlob":[B
    .end local v12    # "len":I
    .end local v13    # "mk":[B
    .end local v14    # "mkChecksum":[B
    .end local v18    # "calculatedCk":[B
    .restart local v15    # "result":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    move-object/from16 v8, p7

    goto :goto_2

    .line 385
    :catch_1
    move-exception v0

    move-object/from16 v8, p7

    goto/16 :goto_4

    .line 381
    :catch_2
    move-exception v0

    move-object/from16 v8, p7

    goto/16 :goto_6

    .line 377
    :catch_3
    move-exception v0

    move-object/from16 v8, p7

    goto/16 :goto_8

    .line 369
    :catch_4
    move-exception v0

    move-object/from16 v8, p7

    goto/16 :goto_a

    .line 365
    :catch_5
    move-exception v0

    move-object/from16 v8, p7

    goto/16 :goto_c

    .line 362
    .restart local v0    # "c":Ljavax/crypto/Cipher;
    .local v1, "calculatedCk":[B
    .restart local v6    # "userKey":Ljavax/crypto/SecretKey;
    .restart local v7    # "IV":[B
    .restart local v8    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v9    # "mkCipher":[B
    .restart local v10    # "offset":I
    .restart local v11    # "mkBlob":[B
    .restart local v12    # "len":I
    .restart local v13    # "mk":[B
    .restart local v14    # "mkChecksum":[B
    :cond_0
    move-object/from16 v18, v1

    .end local v1    # "calculatedCk":[B
    .restart local v18    # "calculatedCk":[B
    if-eqz p8, :cond_1

    .line 363
    const-string v1, "BackupManagerService"

    const-string v2, "Incorrect password"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_6

    .line 393
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v6    # "userKey":Ljavax/crypto/SecretKey;
    .end local v7    # "IV":[B
    .end local v8    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v9    # "mkCipher":[B
    .end local v10    # "offset":I
    .end local v11    # "mkBlob":[B
    .end local v12    # "len":I
    .end local v13    # "mk":[B
    .end local v14    # "mkChecksum":[B
    .end local v18    # "calculatedCk":[B
    :cond_1
    :goto_0
    goto/16 :goto_d

    .line 389
    :catch_6
    move-exception v0

    goto :goto_2

    .line 385
    :catch_7
    move-exception v0

    goto :goto_4

    .line 381
    :catch_8
    move-exception v0

    goto :goto_6

    .line 377
    :catch_9
    move-exception v0

    goto :goto_8

    .line 369
    :catch_a
    move-exception v0

    goto/16 :goto_a

    .line 365
    :catch_b
    move-exception v0

    goto/16 :goto_c

    .line 389
    .end local v15    # "result":Ljava/io/InputStream;
    .restart local v3    # "result":Ljava/io/InputStream;
    :catch_c
    move-exception v0

    goto :goto_1

    .line 385
    :catch_d
    move-exception v0

    goto :goto_3

    .line 381
    :catch_e
    move-exception v0

    goto :goto_5

    .line 377
    :catch_f
    move-exception v0

    goto :goto_7

    .line 369
    :catch_10
    move-exception v0

    goto :goto_9

    .line 365
    :catch_11
    move-exception v0

    goto/16 :goto_b

    .line 389
    :catch_12
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_1
    move-object v15, v3

    move-object/from16 v3, p3

    .line 390
    .end local v3    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/InvalidKeyException;
    .restart local v15    # "result":Ljava/io/InputStream;
    :goto_2
    if-eqz p8, :cond_2

    .line 391
    const-string v1, "BackupManagerService"

    const-string v2, "Illegal password; aborting"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/security/InvalidKeyException;
    goto/16 :goto_d

    .line 385
    .end local v15    # "result":Ljava/io/InputStream;
    .restart local v3    # "result":Ljava/io/InputStream;
    :catch_13
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_3
    move-object v15, v3

    move-object/from16 v3, p3

    .line 386
    .end local v3    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v15    # "result":Ljava/io/InputStream;
    :goto_4
    if-eqz p8, :cond_1

    .line 387
    const-string v1, "BackupManagerService"

    const-string v2, "Needed padding mechanism unavailable!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_0

    .line 381
    .end local v15    # "result":Ljava/io/InputStream;
    .restart local v3    # "result":Ljava/io/InputStream;
    :catch_14
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_5
    move-object v15, v3

    move-object/from16 v3, p3

    .line 382
    .end local v3    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v15    # "result":Ljava/io/InputStream;
    :goto_6
    if-eqz p8, :cond_1

    .line 383
    const-string v1, "BackupManagerService"

    const-string v2, "Needed decryption algorithm unavailable!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 377
    .end local v15    # "result":Ljava/io/InputStream;
    .restart local v3    # "result":Ljava/io/InputStream;
    :catch_15
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_7
    move-object v15, v3

    move-object/from16 v3, p3

    .line 378
    .end local v3    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    .restart local v15    # "result":Ljava/io/InputStream;
    :goto_8
    if-eqz p8, :cond_1

    .line 379
    const-string v1, "BackupManagerService"

    const-string v2, "Invalid block size in master key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_0

    .line 369
    .end local v15    # "result":Ljava/io/InputStream;
    .restart local v3    # "result":Ljava/io/InputStream;
    :catch_16
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_9
    move-object v15, v3

    move-object/from16 v3, p3

    .line 374
    .end local v3    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    .restart local v15    # "result":Ljava/io/InputStream;
    :goto_a
    if-eqz p8, :cond_1

    .line 375
    const-string v1, "BackupManagerService"

    const-string v2, "Incorrect password"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    goto :goto_0

    .line 365
    .end local v15    # "result":Ljava/io/InputStream;
    .restart local v3    # "result":Ljava/io/InputStream;
    :catch_17
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_b
    move-object v15, v3

    move-object/from16 v3, p3

    .line 366
    .end local v3    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v15    # "result":Ljava/io/InputStream;
    :goto_c
    if-eqz p8, :cond_1

    .line 367
    const-string v1, "BackupManagerService"

    const-string v2, "Needed parameter spec unavailable!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    goto/16 :goto_0

    .line 395
    :cond_2
    :goto_d
    return-object v15
.end method

.method private static decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .locals 22
    .param p0, "decryptPassword"    # Ljava/lang/String;
    .param p1, "encryptionName"    # Ljava/lang/String;
    .param p2, "pbkdf2Fallback"    # Z
    .param p3, "rawInStream"    # Ljava/io/InputStream;

    move-object/from16 v1, p1

    .line 402
    const/4 v0, 0x0

    move-object v2, v0

    .line 404
    .local v2, "result":Ljava/io/InputStream;
    :try_start_0
    const-string v0, "AES-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "userSaltHex":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 409
    .local v5, "userSalt":[B
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    .line 410
    .local v12, "ckSaltHex":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 412
    .local v6, "ckSalt":[B
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 413
    .local v7, "rounds":I
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 415
    .local v8, "userIvHex":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    .line 418
    .local v9, "masterKeyBlobHex":Ljava/lang/String;
    const-string v4, "PBKDF2WithHmacSHA1"

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v10, p3

    invoke-static/range {v3 .. v11}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 420
    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 421
    const-string v14, "PBKDF2WithHmacSHA1And8bit"

    const/16 v21, 0x1

    move-object/from16 v13, p0

    move-object v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, p3

    invoke-static/range {v13 .. v21}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    .line 425
    .end local v2    # "result":Ljava/io/InputStream;
    .end local v5    # "userSalt":[B
    .end local v6    # "ckSalt":[B
    .end local v7    # "rounds":I
    .end local v8    # "userIvHex":Ljava/lang/String;
    .end local v9    # "masterKeyBlobHex":Ljava/lang/String;
    .end local v12    # "ckSaltHex":Ljava/lang/String;
    .local v0, "result":Ljava/io/InputStream;
    move-object v2, v0

    .end local v0    # "result":Ljava/io/InputStream;
    .restart local v2    # "result":Ljava/io/InputStream;
    :cond_0
    goto :goto_0

    .line 426
    :cond_1
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported encryption method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Can\'t read input header"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 428
    :catch_1
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "BackupManagerService"

    const-string v5, "Can\'t parse restore data header"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    nop

    .line 434
    :goto_1
    return-object v2
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 801
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 808
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 805
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 12
    .param p0, "rawInputStream"    # Ljava/io/InputStream;
    .param p1, "decryptPassword"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "compressed":Z
    move-object v1, p0

    .line 259
    .local v1, "preCompressStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 260
    .local v2, "okay":Z
    const-string v3, "ANDROID BACKUP\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 261
    .local v3, "headerLen":I
    new-array v4, v3, [B

    .line 262
    .local v4, "streamHeader":[B
    invoke-static {p0, v4}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readFullyOrThrow(Ljava/io/InputStream;[B)V

    .line 263
    const-string v5, "ANDROID BACKUP\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 265
    .local v5, "magicBytes":[B
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 267
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 269
    .local v7, "archiveVersion":I
    const/4 v8, 0x5

    if-gt v7, v8, :cond_5

    .line 272
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    move v10, v8

    .line 274
    .local v10, "pbkdf2Fallback":Z
    :goto_0
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 275
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1

    move v8, v9

    nop

    :cond_1
    move v0, v8

    .line 276
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 277
    const-string/jumbo v8, "none"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 279
    const/4 v2, 0x1

    goto :goto_1

    .line 280
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 281
    invoke-static {p1, v6, v10, p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_4

    .line 285
    const/4 v2, 0x1

    goto :goto_1

    .line 288
    :cond_3
    const-string v8, "BackupManagerService"

    const-string v9, "Archive is encrypted but no password given"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v10    # "pbkdf2Fallback":Z
    :cond_4
    :goto_1
    goto :goto_2

    .line 291
    :cond_5
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong header version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "archiveVersion":I
    :goto_2
    goto :goto_3

    .line 294
    :cond_6
    const-string v6, "BackupManagerService"

    const-string v7, "Didn\'t read the right header magic"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_3
    if-nez v2, :cond_7

    .line 298
    const-string v6, "BackupManagerService"

    const-string v7, "Invalid restore data; aborting."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v6, 0x0

    return-object v6

    .line 303
    :cond_7
    if-eqz v0, :cond_8

    new-instance v6, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_4

    :cond_8
    move-object v6, v1

    :goto_4
    return-object v6
.end method

.method private static readFullyOrThrow(Ljava/io/InputStream;[B)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "offset":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 242
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 243
    .local v1, "bytesRead":I
    if-lez v1, :cond_0

    .line 246
    add-int/2addr v0, v1

    .line 247
    .end local v1    # "bytesRead":I
    goto :goto_0

    .line 244
    .restart local v1    # "bytesRead":I
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Couldn\'t fully read data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    .end local v1    # "bytesRead":I
    :cond_1
    return-void
.end method

.method private static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 309
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-ltz v1, :cond_1

    .line 310
    const/16 v1, 0xa

    if-ne v2, v1, :cond_0

    .line 311
    goto :goto_1

    .line 313
    :cond_0
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 315
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setUpPipes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 813
    return-void
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 8
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "doRestoreFinished"    # Z

    .line 830
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_2

    .line 833
    if-eqz p2, :cond_1

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    .line 835
    .local v0, "token":I
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 836
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v3

    .line 837
    .local v3, "fullBackupAgentTimeoutMillis":J
    new-instance v1, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v1, v2, v0}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/BackupManagerService;I)V

    move-object v7, v1

    .line 839
    .local v7, "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x1

    move v2, v0

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 841
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    new-instance v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v1, v2, v0, v5}, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/BackupManagerService;)V

    .line 847
    .local v1, "runner":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v5, "restore-sys-finished-runner"

    invoke-direct {v2, v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 848
    .end local v1    # "runner":Ljava/lang/Runnable;
    goto :goto_0

    .line 849
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 850
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v2

    .line 849
    invoke-interface {v1, v0, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 853
    :goto_0
    invoke-virtual {v7}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->await()V

    .line 853
    .end local v0    # "token":I
    .end local v3    # "fullBackupAgentTimeoutMillis":J
    .end local v7    # "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    goto :goto_1

    .line 857
    :catch_0
    move-exception v0

    goto :goto_2

    .line 856
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    goto :goto_3

    .line 857
    :goto_2
    nop

    .line 858
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 862
    :cond_2
    return-void
.end method

.method private tearDownPipes()V
    .locals 4

    .line 816
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 818
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 819
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v0, v1, v2

    .line 820
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 821
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    goto :goto_0

    .line 822
    :catch_0
    move-exception v1

    .line 823
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Couldn\'t close agent pipes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 825
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 827
    :cond_0
    return-void
.end method


# virtual methods
.method restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .locals 52
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "mustKillAgent"    # Z
    .param p3, "buffer"    # [B
    .param p4, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p5, "allowApks"    # Z
    .param p6, "token"    # I
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 439
    new-instance v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;

    invoke-direct {v0, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;-><init>(Lcom/android/server/backup/restore/PerformAdbRestoreTask;)V

    move-object v12, v0

    .line 445
    .local v12, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    new-instance v0, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v13, p7

    invoke-direct {v0, v10, v12, v13}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    move-object v14, v0

    .line 449
    .local v14, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    const/4 v15, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v14}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v0

    move-object v6, v0

    .line 450
    .local v6, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v6, :cond_1d

    .line 455
    iget-object v0, v6, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object v5, v0

    .line 456
    .local v5, "pkg":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10

    if-nez v0, :cond_1

    .line 459
    :try_start_1
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_0
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_1

    .line 467
    const-string v0, "BackupManagerService"

    const-string v2, "Saw new package; finalizing old one"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 471
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v0, v9}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 472
    iput-object v15, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 473
    iput-object v15, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 789
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_0
    move-exception v0

    move/from16 v4, p6

    move-object v5, v10

    move-object v7, v11

    move-object/from16 v30, v13

    goto/16 :goto_1c

    .line 477
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, v6, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v2, "_manifest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    invoke-virtual {v14, v6}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 482
    .local v0, "signatures":[Landroid/content/pm/Signature;
    iget-wide v2, v6, Lcom/android/server/backup/FileMetadata;->version:J

    iput-wide v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAppVersion:J

    .line 483
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 485
    .local v7, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 486
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 485
    move-object v2, v14

    move/from16 v4, p5

    move-object v15, v5

    move-object v5, v6

    .line 485
    .end local v5    # "pkg":Ljava/lang/String;
    .local v15, "pkg":Ljava/lang/String;
    move-object v13, v6

    move-object v6, v0

    .line 485
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .local v13, "info":Lcom/android/server/backup/FileMetadata;
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v2

    .line 488
    .local v2, "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v4, v13, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v4, v13, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-wide v3, v13, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v14, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 495
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v3, v15}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 496
    .end local v0    # "signatures":[Landroid/content/pm/Signature;
    .end local v2    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v7    # "pmi":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 795
    move/from16 v4, p6

    move-object v5, v10

    move-object v7, v11

    goto/16 :goto_19

    .line 496
    .end local v13    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v15    # "pkg":Ljava/lang/String;
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_2
    move-object v15, v5

    move-object v13, v6

    .line 496
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v13    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v15    # "pkg":Ljava/lang/String;
    iget-object v0, v13, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v2, "_meta"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 498
    invoke-virtual {v14, v13}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 504
    invoke-virtual {v14}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mWidgetData:[B

    .line 506
    invoke-virtual {v14}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10

    move-object v2, v0

    .line 508
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :try_start_3
    iget-wide v3, v13, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v14, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 795
    move/from16 v4, p6

    move-object/from16 v30, v2

    move-object v5, v10

    move-object v7, v11

    goto/16 :goto_1a

    .line 789
    .end local v13    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v15    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v30, v2

    move-object v5, v10

    move-object v7, v11

    goto/16 :goto_1c

    .line 512
    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v13    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_3
    const/4 v0, 0x1

    .line 513
    .local v0, "okay":Z
    :try_start_4
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/restore/RestorePolicy;

    move-object v7, v2

    .line 514
    .local v7, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    sget-object v2, Lcom/android/server/backup/restore/PerformAdbRestoreTask$2;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual {v7}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10

    packed-switch v2, :pswitch_data_0

    .line 566
    move-object/from16 v31, v7

    move v10, v9

    .line 566
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .local v31, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :try_start_5
    const-string v2, "BackupManagerService"
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f

    goto/16 :goto_2

    .line 550
    .end local v31    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :pswitch_0
    :try_start_6
    iget-object v2, v13, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 552
    const-string v2, "BackupManagerService"

    const-string v3, "apk present but ACCEPT"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10

    .line 558
    const/4 v0, 0x0

    .line 573
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v31    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_4
    move-object/from16 v31, v7

    move v10, v9

    goto/16 :goto_3

    .line 522
    .end local v31    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :pswitch_1
    :try_start_7
    iget-object v2, v13, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 524
    const-string v2, "BackupManagerService"

    const-string v3, "APK file; installing"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v6, v8

    move-object v8, v2

    .line 528
    .local v8, "installerPackageName":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 529
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v5, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    .line 528
    move-object/from16 v16, v2

    move-object v2, v10

    move v10, v6

    move-object/from16 v6, v16

    move-object/from16 v31, v7

    move-object v7, v13

    .line 528
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v31    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    move v10, v9

    move-object v9, v12

    invoke-static/range {v2 .. v9}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;)Z

    move-result v2

    .line 533
    .local v2, "isSuccessfullyInstalled":Z
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    .line 534
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_1

    .line 535
    :cond_5
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 533
    :goto_1
    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-wide v3, v13, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v14, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 540
    return v10

    .line 544
    .end local v2    # "isSuccessfullyInstalled":Z
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v31    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_6
    move-object/from16 v31, v7

    move v10, v9

    .line 544
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v31    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const/4 v0, 0x0

    .line 547
    goto :goto_3

    .line 516
    .end local v31    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :pswitch_2
    move-object/from16 v31, v7

    move v10, v9

    .line 516
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v31    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    const/4 v0, 0x0

    .line 517
    goto :goto_3

    .line 566
    :goto_2
    const-string v3, "Invalid policy from manifest"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v0, 0x0

    .line 568
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    :goto_3
    iget-object v2, v13, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 574
    const/4 v0, 0x0

    .line 579
    .end local v0    # "okay":Z
    .local v2, "okay":Z
    :cond_7
    move v2, v0

    if-eqz v2, :cond_8

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_8

    .line 580
    const-string v0, "BackupManagerService"

    const-string v3, "Reusing existing agent instance"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_8
    if-eqz v2, :cond_c

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_c

    .line 584
    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to launch agent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f

    .line 588
    :try_start_8
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 589
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v15, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 594
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 598
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 600
    const-string v0, "BackupManagerService"

    const-string v3, "Clearing app data preparatory to full restore"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v15, v10}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;Z)V

    goto :goto_4

    .line 606
    :cond_9
    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup agent ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") => no clear"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_4
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 613
    :cond_a
    const-string v0, "BackupManagerService"

    const-string v3, "We\'ve initialized this app already; no clear required"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->setUpPipes()V

    .line 620
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 621
    const-string/jumbo v4, "k"

    iget-object v5, v13, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 622
    nop

    .line 620
    const/4 v8, 0x0

    goto :goto_6

    .line 623
    :cond_b
    const/4 v8, 0x3

    .line 620
    :goto_6
    invoke-virtual {v0, v3, v8}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 624
    iput-object v15, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_7

    .line 627
    :catch_2
    move-exception v0

    goto :goto_8

    .line 625
    :catch_3
    move-exception v0

    .line 629
    :goto_7
    nop

    .line 631
    :goto_8
    :try_start_9
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_c

    .line 632
    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create agent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v2, 0x0

    .line 634
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 635
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    :cond_c
    if-eqz v2, :cond_d

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 642
    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " but agent is for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/4 v2, 0x0

    .line 651
    .end local v2    # "okay":Z
    .local v8, "okay":Z
    :cond_d
    move v8, v2

    const-wide/16 v32, 0x0

    if-eqz v8, :cond_18

    .line 652
    const/4 v9, 0x1

    .line 653
    .local v9, "agentSuccess":Z
    iget-wide v2, v13, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v34, v2

    .line 654
    .local v34, "toCopy":J
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 655
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v38
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f

    .line 657
    .local v38, "restoreAgentTimeoutMillis":J
    :try_start_a
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/16 v40, 0x0

    const/16 v41, 0x1

    move-object/from16 v36, v0

    move/from16 v37, p6

    invoke-virtual/range {v36 .. v41}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 660
    const-string/jumbo v0, "obb"

    iget-object v2, v13, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 662
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring OBB file for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v18, v2, v3

    iget-wide v2, v13, Lcom/android/server/backup/FileMetadata;->size:J

    iget v4, v13, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v5, v13, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v6, v13, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-wide v10, v13, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    move/from16 v42, v8

    :try_start_b
    iget-object v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 668
    .end local v8    # "okay":Z
    .local v42, "okay":Z
    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v28

    .line 665
    move-object/from16 v16, v0

    move-object/from16 v17, v15

    move-wide/from16 v19, v2

    move/from16 v21, v4

    move-object/from16 v22, v5

    move-wide/from16 v23, v6

    move-wide/from16 v25, v10

    move/from16 v27, p6

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    goto/16 :goto_9

    .line 669
    .end local v42    # "okay":Z
    .restart local v8    # "okay":Z
    :cond_e
    move/from16 v42, v8

    .line 669
    .end local v8    # "okay":Z
    .restart local v42    # "okay":Z
    const-string/jumbo v0, "k"

    iget-object v2, v13, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 671
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring key-value file for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-wide v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAppVersion:J

    iput-wide v2, v13, Lcom/android/server/backup/FileMetadata;->version:J

    .line 676
    new-instance v0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 679
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v18

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v20, v3, v4

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v13

    move-object/from16 v21, v3

    move/from16 v22, p6

    invoke-direct/range {v16 .. v22}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerServiceInterface;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    .line 681
    .local v0, "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v3, "restore-key-value-runner"

    invoke-direct {v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 682
    .end local v0    # "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    goto/16 :goto_9

    .line 684
    :cond_f
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invoking agent to restore file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 691
    const-string v0, "BackupManagerService"

    const-string/jumbo v2, "system process agent - spinning a thread"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v0, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v6, v2, v5

    move-object v2, v0

    move-object v5, v13

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 694
    .local v0, "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v3, "restore-sys-runner"

    invoke-direct {v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 695
    .end local v0    # "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    goto :goto_9

    .line 696
    :cond_10
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v17, v2, v3

    iget-wide v4, v13, Lcom/android/server/backup/FileMetadata;->size:J

    iget v2, v13, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v6, v13, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v7, v13, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v10, v13, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v43, v4

    iget-wide v3, v13, Lcom/android/server/backup/FileMetadata;->mtime:J

    iget-object v5, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 698
    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v28

    .line 696
    move-object/from16 v16, v0

    move-wide/from16 v18, v43

    move/from16 v20, v2

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-wide/from16 v23, v10

    move-wide/from16 v25, v3

    move/from16 v27, p6

    invoke-interface/range {v16 .. v28}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_4

    .line 712
    :goto_9
    nop

    .line 715
    move/from16 v8, v42

    goto :goto_d

    .line 706
    :catch_4
    move-exception v0

    goto :goto_a

    .line 701
    :catch_5
    move-exception v0

    goto :goto_b

    .line 706
    .end local v42    # "okay":Z
    .restart local v8    # "okay":Z
    :catch_6
    move-exception v0

    move/from16 v42, v8

    .line 709
    .end local v8    # "okay":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v42    # "okay":Z
    :goto_a
    :try_start_c
    const-string v2, "BackupManagerService"

    const-string v3, "Agent crashed during full restore"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 710
    const/4 v9, 0x0

    .line 711
    const/4 v0, 0x0

    .line 711
    .end local v42    # "okay":Z
    .local v0, "okay":Z
    goto :goto_c

    .line 789
    .end local v0    # "okay":Z
    .end local v9    # "agentSuccess":Z
    .end local v13    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v31    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v34    # "toCopy":J
    .end local v38    # "restoreAgentTimeoutMillis":J
    :catch_7
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    goto/16 :goto_1b

    .line 701
    .restart local v8    # "okay":Z
    .restart local v9    # "agentSuccess":Z
    .restart local v13    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v31    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v34    # "toCopy":J
    .restart local v38    # "restoreAgentTimeoutMillis":J
    :catch_8
    move-exception v0

    move/from16 v42, v8

    .line 703
    .end local v8    # "okay":Z
    .local v0, "e":Ljava/io/IOException;
    .restart local v42    # "okay":Z
    :goto_b
    :try_start_d
    const-string v2, "BackupManagerService"

    const-string v3, "Couldn\'t establish restore"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v9, 0x0

    .line 705
    const/4 v0, 0x0

    .line 712
    .end local v42    # "okay":Z
    .local v0, "okay":Z
    nop

    .line 715
    .end local v0    # "okay":Z
    .restart local v8    # "okay":Z
    :goto_c
    move v8, v0

    :goto_d
    if-eqz v8, :cond_16

    .line 716
    const/4 v0, 0x1

    .line 717
    .local v0, "pipeOkay":Z
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 718
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    move v3, v0

    move-wide/from16 v5, v34

    .line 719
    .end local v0    # "pipeOkay":Z
    .end local v34    # "toCopy":J
    .local v2, "pipe":Ljava/io/FileOutputStream;
    .local v3, "pipeOkay":Z
    .local v5, "toCopy":J
    :goto_e
    cmp-long v0, v5, v32

    if-lez v0, :cond_15

    .line 720
    move-object/from16 v7, p3

    :try_start_e
    array-length v0, v7

    int-to-long v10, v0

    cmp-long v0, v5, v10

    if-lez v0, :cond_11

    .line 721
    array-length v0, v7
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_f

    :cond_11
    long-to-int v0, v5

    :goto_f
    move v10, v0

    .line 722
    .local v10, "toRead":I
    const/4 v4, 0x0

    move-object/from16 v11, p1

    :try_start_f
    invoke-virtual {v11, v7, v4, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move/from16 v45, v0

    .line 723
    .local v45, "nRead":I
    move/from16 v4, v45

    if-ltz v4, :cond_12

    .line 724
    .end local v45    # "nRead":I
    .local v4, "nRead":I
    move/from16 v46, v8

    move/from16 v47, v9

    iget-wide v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 724
    .end local v8    # "okay":Z
    .end local v9    # "agentSuccess":Z
    .local v46, "okay":Z
    .local v47, "agentSuccess":Z
    move/from16 v48, v10

    int-to-long v10, v4

    .line 724
    .end local v10    # "toRead":I
    .local v48, "toRead":I
    add-long/2addr v8, v10

    :try_start_10
    iput-wide v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_10

    .line 726
    .end local v46    # "okay":Z
    .end local v47    # "agentSuccess":Z
    .end local v48    # "toRead":I
    .restart local v8    # "okay":Z
    .restart local v9    # "agentSuccess":Z
    .restart local v10    # "toRead":I
    :cond_12
    move/from16 v46, v8

    move/from16 v47, v9

    move/from16 v48, v10

    .line 726
    .end local v8    # "okay":Z
    .end local v9    # "agentSuccess":Z
    .end local v10    # "toRead":I
    .restart local v46    # "okay":Z
    .restart local v47    # "agentSuccess":Z
    .restart local v48    # "toRead":I
    :goto_10
    if-gtz v4, :cond_13

    .line 727
    goto :goto_12

    .line 729
    :cond_13
    int-to-long v8, v4

    sub-long/2addr v5, v8

    .line 733
    if-eqz v3, :cond_14

    .line 735
    const/4 v8, 0x0

    :try_start_11
    invoke-virtual {v2, v7, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 739
    goto :goto_11

    .line 736
    :catch_9
    move-exception v0

    move-object v8, v0

    .line 737
    .local v0, "e":Ljava/io/IOException;
    :try_start_12
    const-string v8, "BackupManagerService"

    const-string v9, "Failed to write to restore pipe"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    const/4 v0, 0x0

    .line 741
    .end local v3    # "pipeOkay":Z
    .end local v4    # "nRead":I
    .end local v48    # "toRead":I
    .local v0, "pipeOkay":Z
    move v3, v0

    .line 718
    .end local v0    # "pipeOkay":Z
    .restart local v3    # "pipeOkay":Z
    :cond_14
    :goto_11
    move/from16 v8, v46

    move/from16 v9, v47

    const/4 v4, 0x1

    goto :goto_e

    .line 789
    .end local v2    # "pipe":Ljava/io/FileOutputStream;
    .end local v3    # "pipeOkay":Z
    .end local v5    # "toCopy":J
    .end local v13    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v31    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v38    # "restoreAgentTimeoutMillis":J
    .end local v46    # "okay":Z
    .end local v47    # "agentSuccess":Z
    :catch_a
    move-exception v0

    move/from16 v4, p6

    move-object v5, v11

    goto/16 :goto_1b

    :catch_b
    move-exception v0

    move/from16 v4, p6

    goto/16 :goto_18

    .line 745
    .restart local v2    # "pipe":Ljava/io/FileOutputStream;
    .restart local v3    # "pipeOkay":Z
    .restart local v5    # "toCopy":J
    .restart local v8    # "okay":Z
    .restart local v9    # "agentSuccess":Z
    .restart local v13    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v31    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v38    # "restoreAgentTimeoutMillis":J
    :cond_15
    move/from16 v46, v8

    move/from16 v47, v9

    move-object/from16 v7, p3

    .line 745
    .end local v8    # "okay":Z
    .end local v9    # "agentSuccess":Z
    .restart local v46    # "okay":Z
    .restart local v47    # "agentSuccess":Z
    :goto_12
    iget-wide v8, v13, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v14, v8, v9}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 749
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    move/from16 v4, p6

    :try_start_13
    invoke-virtual {v0, v4}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    move v9, v0

    .line 754
    .end local v2    # "pipe":Ljava/io/FileOutputStream;
    .end local v3    # "pipeOkay":Z
    .end local v47    # "agentSuccess":Z
    .restart local v9    # "agentSuccess":Z
    move-wide/from16 v34, v5

    move/from16 v47, v9

    goto :goto_13

    .line 754
    .end local v5    # "toCopy":J
    .end local v46    # "okay":Z
    .restart local v8    # "okay":Z
    .restart local v34    # "toCopy":J
    :cond_16
    move/from16 v4, p6

    move/from16 v46, v8

    move/from16 v47, v9

    move-object/from16 v7, p3

    .line 754
    .end local v8    # "okay":Z
    .end local v9    # "agentSuccess":Z
    .restart local v46    # "okay":Z
    .restart local v47    # "agentSuccess":Z
    :goto_13
    if-nez v47, :cond_17

    .line 756
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Agent failure restoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; now ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 760
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 761
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 762
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    .end local v34    # "toCopy":J
    .end local v38    # "restoreAgentTimeoutMillis":J
    .end local v47    # "agentSuccess":Z
    :cond_17
    move/from16 v42, v46

    goto :goto_14

    .line 789
    .end local v13    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v31    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v46    # "okay":Z
    :catch_c
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v7, p3

    goto :goto_18

    .line 769
    .restart local v8    # "okay":Z
    .restart local v13    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v31    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_18
    move/from16 v4, p6

    move/from16 v42, v8

    move-object v7, v11

    .line 769
    .end local v8    # "okay":Z
    .restart local v42    # "okay":Z
    :goto_14
    if-nez v42, :cond_1c

    .line 771
    const-string v0, "BackupManagerService"

    const-string v2, "[discarding file content]"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-wide v2, v13, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v5, 0x1ff

    add-long/2addr v2, v5

    const-wide/16 v5, -0x200

    and-long/2addr v2, v5

    .line 774
    .local v2, "bytesToConsume":J
    :goto_15
    cmp-long v0, v2, v32

    if-lez v0, :cond_1c

    .line 775
    array-length v0, v7

    int-to-long v5, v0

    cmp-long v0, v2, v5

    if-lez v0, :cond_19

    .line 776
    array-length v0, v7
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    goto :goto_16

    :cond_19
    long-to-int v0, v2

    .line 777
    .local v0, "toRead":I
    :goto_16
    move-object/from16 v5, p1

    const/4 v8, 0x0

    :try_start_14
    invoke-virtual {v5, v7, v8, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    int-to-long v9, v6

    .line 778
    .local v9, "nRead":J
    cmp-long v6, v9, v32

    if-ltz v6, :cond_1a

    .line 779
    move-wide/from16 v50, v9

    iget-wide v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    .line 779
    .end local v9    # "nRead":J
    .local v50, "nRead":J
    add-long v8, v8, v50

    iput-wide v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    goto :goto_17

    .line 781
    .end local v50    # "nRead":J
    .restart local v9    # "nRead":J
    :cond_1a
    move-wide/from16 v50, v9

    .line 781
    .end local v9    # "nRead":J
    .restart local v50    # "nRead":J
    :goto_17
    cmp-long v6, v50, v32

    if-gtz v6, :cond_1b

    .line 782
    goto :goto_19

    .line 784
    :cond_1b
    sub-long v2, v2, v50

    .line 785
    .end local v0    # "toRead":I
    .end local v50    # "nRead":J
    goto :goto_15

    .line 789
    .end local v2    # "bytesToConsume":J
    .end local v13    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v31    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v42    # "okay":Z
    :catch_d
    move-exception v0

    goto :goto_1b

    :catch_e
    move-exception v0

    goto :goto_18

    .line 795
    .restart local v13    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_1c
    move-object/from16 v5, p1

    goto :goto_19

    .line 789
    .end local v13    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_f
    move-exception v0

    move/from16 v4, p6

    move-object v7, v11

    .line 789
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v30, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_18
    move-object/from16 v5, p1

    goto :goto_1b

    .line 795
    .end local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_1d
    move/from16 v4, p6

    move-object v13, v6

    move-object v5, v10

    move-object v7, v11

    .line 795
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v13    # "info":Lcom/android/server/backup/FileMetadata;
    :goto_19
    move-object/from16 v30, p7

    .line 794
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_1a
    move-object/from16 v29, v13

    goto :goto_1d

    .line 789
    .end local v13    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_10
    move-exception v0

    move/from16 v4, p6

    move-object v5, v10

    move-object v7, v11

    .line 789
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_1b
    move-object/from16 v30, p7

    .line 791
    .local v0, "e":Ljava/io/IOException;
    :goto_1c
    const-string v2, "BackupManagerService"

    const-string/jumbo v3, "io exception on restore socket read"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 794
    nop

    .line 794
    .end local v0    # "e":Ljava/io/IOException;
    const/16 v29, 0x0

    .line 794
    .local v29, "info":Lcom/android/server/backup/FileMetadata;
    :goto_1d
    move-object/from16 v0, v29

    .line 797
    .end local v29    # "info":Lcom/android/server/backup/FileMetadata;
    .local v0, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v0, :cond_1e

    const/16 v49, 0x1

    goto :goto_1e

    :cond_1e
    const/16 v49, 0x0

    :goto_1e
    return v49

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 11

    .line 172
    const-string v0, "BackupManagerService"

    const-string v1, "--- Performing full-dataset restore ---"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 174
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendStartRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 177
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    const-string v1, "com.android.sharedstoragebackup"

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 183
    .local v0, "rawInStream":Ljava/io/FileInputStream;
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 185
    const-string v2, "BackupManagerService"

    const-string v3, "Backup password mismatch; aborting"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 216
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 217
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 220
    if-eqz v0, :cond_1

    .line 221
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 224
    :catch_0
    move-exception v2

    goto :goto_1

    .line 223
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    goto :goto_2

    .line 224
    :goto_1
    nop

    .line 225
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 229
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 230
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 231
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 233
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 234
    const-string v1, "BackupManagerService"

    const-string v2, "Full restore pass complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 187
    return-void

    .line 231
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 190
    :cond_2
    const-wide/16 v2, 0x0

    :try_start_4
    iput-wide v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    .line 192
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v2

    .line 194
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 196
    .local v2, "tarInputStream":Ljava/io/InputStream;
    if-nez v2, :cond_3

    .line 216
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 217
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v3, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 220
    nop

    .line 221
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    .line 224
    :catch_1
    move-exception v3

    goto :goto_4

    .line 223
    :goto_3
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 227
    goto :goto_5

    .line 224
    :goto_4
    nop

    .line 225
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 229
    :try_start_6
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 230
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 231
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 232
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 233
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 234
    const-string v1, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 199
    return-void

    .line 231
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 202
    :cond_3
    const v3, 0x8000

    :try_start_8
    new-array v3, v3, [B

    move-object v6, v3

    .line 205
    .local v6, "buffer":[B
    :cond_4
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 207
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v9

    const/4 v10, 0x0

    .line 205
    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z

    move-result v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 208
    .local v3, "didRestore":Z
    if-nez v3, :cond_4

    .line 216
    .end local v2    # "tarInputStream":Ljava/io/InputStream;
    .end local v3    # "didRestore":Z
    .end local v6    # "buffer":[B
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 217
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 220
    nop

    .line 221
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_6

    .line 224
    :catch_2
    move-exception v2

    goto :goto_7

    .line 223
    :goto_6
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 227
    goto :goto_8

    .line 224
    :goto_7
    nop

    .line 225
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v2    # "e":Ljava/io/IOException;
    :goto_8
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 229
    :try_start_a
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 230
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 231
    monitor-exit v3

    goto :goto_c

    :catchall_2
    move-exception v1

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v1

    .line 216
    :catchall_3
    move-exception v2

    goto :goto_d

    .line 213
    :catch_3
    move-exception v2

    .line 214
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_b
    const-string v3, "BackupManagerService"

    const-string v4, "Unable to read restore input"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 216
    .end local v2    # "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 217
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 220
    if-eqz v0, :cond_5

    .line 221
    :try_start_c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_9

    .line 224
    :catch_4
    move-exception v2

    goto :goto_a

    .line 223
    :cond_5
    :goto_9
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 227
    goto :goto_b

    .line 224
    :goto_a
    nop

    .line 225
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v2    # "e":Ljava/io/IOException;
    :goto_b
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 229
    :try_start_d
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 230
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 231
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 232
    :goto_c
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 233
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 234
    const-string v1, "BackupManagerService"

    const-string v2, "Full restore pass complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 236
    nop

    .line 237
    return-void

    .line 231
    :catchall_4
    move-exception v1

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v1

    .line 216
    :goto_d
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 217
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v3, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 220
    if-eqz v0, :cond_6

    .line 221
    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_e

    .line 224
    :catch_5
    move-exception v3

    goto :goto_f

    .line 223
    :cond_6
    :goto_e
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 227
    goto :goto_10

    .line 224
    :goto_f
    nop

    .line 225
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v3    # "e":Ljava/io/IOException;
    :goto_10
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 229
    :try_start_10
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 230
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 231
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 232
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 233
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 234
    const-string v1, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 231
    :catchall_5
    move-exception v1

    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    throw v1
.end method
