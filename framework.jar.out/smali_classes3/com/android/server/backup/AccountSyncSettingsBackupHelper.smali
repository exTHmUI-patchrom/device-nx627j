.class public Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
.super Ljava/lang/Object;
.source "AccountSyncSettingsBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final JSON_FORMAT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final JSON_FORMAT_HEADER_KEY:Ljava/lang/String; = "account_data"

.field private static final JSON_FORMAT_VERSION:I = 0x1

.field private static final KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final KEY_ACCOUNT_AUTHORITIES:Ljava/lang/String; = "authorities"

.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "name"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_AUTHORITY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_AUTHORITY_SYNC_ENABLED:Ljava/lang/String; = "syncEnabled"

.field private static final KEY_AUTHORITY_SYNC_STATE:Ljava/lang/String; = "syncState"

.field private static final KEY_MASTER_SYNC_ENABLED:Ljava/lang/String; = "masterSyncEnabled"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final MD5_BYTE_SIZE:I = 0x10

.field private static final STASH_FILE:Ljava/lang/String;

.field private static final STATE_VERSION:I = 0x1

.field private static final SYNC_REQUEST_LATCH_TIMEOUT_SECONDS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AccountSyncSettingsBackupHelper"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 306
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
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/backup/unadded_account_syncsettings.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    .line 88
    return-void
.end method

.method public static accountAdded(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 347
    new-instance v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    invoke-direct {v0, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    .line 348
    .local v0, "helper":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    invoke-direct {v0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->accountAddedInternal()V

    .line 349
    return-void
.end method

.method private accountAddedInternal()V
    .locals 4

    .line 322
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .local v0, "fIn":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 323
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 324
    .local v2, "in":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "in":Ljava/io/DataInputStream;
    move-object v2, v3

    .line 325
    .local v2, "jsonString":Ljava/lang/String;
    :try_start_2
    invoke-static {v1, v0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 332
    .end local v0    # "fIn":Ljava/io/FileInputStream;
    nop

    .line 331
    nop

    .line 335
    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 340
    .end local v0    # "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, "jse":Lorg/json/JSONException;
    const-string v1, "AccountSyncSettingsBackupHelper"

    const-string v3, "there was an error with the stashed sync settings"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .end local v0    # "jse":Lorg/json/JSONException;
    :goto_0
    return-void

    .line 325
    .end local v2    # "jsonString":Ljava/lang/String;
    .local v0, "fIn":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 322
    :catch_1
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 325
    :goto_1
    :try_start_5
    invoke-static {v1, v0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 329
    .end local v0    # "fIn":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 331
    .local v0, "ioe":Ljava/io/IOException;
    return-void

    .line 325
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 328
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private generateMd5Checksum([B)[B
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 233
    if-nez p1, :cond_0

    .line 234
    const/4 v0, 0x0

    return-object v0

    .line 237
    :cond_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 238
    .local v0, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method private getAccounts()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 358
    .local v0, "accounts":[Landroid/accounts/Account;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 359
    .local v1, "accountHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/Account;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 360
    .local v4, "account":Landroid/accounts/Account;
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 359
    .end local v4    # "account":Landroid/accounts/Account;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 362
    :cond_0
    return-object v1
.end method

.method private readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B
    .locals 7
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    .line 193
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 195
    .local v0, "dataInput":Ljava/io/DataInputStream;
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 197
    .local v2, "oldMd5Checksum":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 198
    .local v3, "stateVersion":I
    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 202
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 203
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v2, v4

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 206
    .end local v4    # "i":I
    :cond_0
    const-string v1, "AccountSyncSettingsBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Backup state version is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (support only up to version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v3    # "stateVersion":I
    :cond_1
    goto :goto_1

    .line 209
    :catch_0
    move-exception v1

    .line 213
    :goto_1
    return-object v2
.end method

.method private restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "accountJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 397
    const-string v0, "authorities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 398
    .local v0, "authorities":Lorg/json/JSONArray;
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "accountName":Ljava/lang/String;
    const-string v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "accountType":Ljava/lang/String;
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .local v3, "account":Landroid/accounts/Account;
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 403
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 404
    .local v6, "authority":Lorg/json/JSONObject;
    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 405
    .local v7, "authorityName":Ljava/lang/String;
    const-string v8, "syncEnabled"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 406
    .local v8, "wasSyncEnabled":Z
    const-string v9, "syncState"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 408
    .local v9, "wasSyncable":I
    invoke-static {v3, v7, v8, v4}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 411
    if-nez v8, :cond_1

    .line 412
    nop

    .line 415
    if-nez v9, :cond_0

    .line 416
    nop

    .line 412
    move v10, v4

    goto :goto_1

    .line 416
    :cond_0
    const/4 v10, 0x2

    .line 412
    :goto_1
    invoke-static {v3, v7, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 402
    .end local v6    # "authority":Lorg/json/JSONObject;
    .end local v7    # "authorityName":Ljava/lang/String;
    .end local v8    # "wasSyncEnabled":Z
    .end local v9    # "wasSyncable":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 419
    .end local v5    # "i":I
    :cond_2
    return-void
.end method

.method private restoreFromJsonArray(Lorg/json/JSONArray;)V
    .locals 8
    .param p1, "accountJSONArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getAccounts()Ljava/util/HashSet;

    move-result-object v0

    .line 278
    .local v0, "currentAccounts":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/Account;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 279
    .local v1, "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 280
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 281
    .local v3, "accountJSON":Lorg/json/JSONObject;
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "accountName":Ljava/lang/String;
    const-string v6, "type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, "accountType":Ljava/lang/String;
    nop

    .line 286
    .local v4, "account":Landroid/accounts/Account;
    :try_start_0
    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    .line 289
    nop

    .line 293
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 295
    invoke-direct {p0, v3}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 297
    :cond_0
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .end local v3    # "accountJSON":Lorg/json/JSONObject;
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "accountName":Ljava/lang/String;
    .end local v6    # "accountType":Ljava/lang/String;
    goto :goto_1

    .line 287
    .restart local v3    # "accountJSON":Lorg/json/JSONObject;
    .restart local v4    # "account":Landroid/accounts/Account;
    .restart local v5    # "accountName":Ljava/lang/String;
    .restart local v6    # "accountType":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 288
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    nop

    .line 279
    .end local v3    # "accountJSON":Lorg/json/JSONObject;
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "accountName":Ljava/lang/String;
    .end local v6    # "accountType":Ljava/lang/String;
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 302
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 303
    .local v2, "fOutput":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "jsonString":Ljava/lang/String;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 305
    .local v5, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/DataOutputStream;
    :try_start_3
    invoke-static {v4, v2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_2

    .line 302
    :catch_1
    move-exception v3

    move-object v4, v3

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 306
    :goto_2
    :try_start_5
    invoke-static {v4, v2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v2    # "fOutput":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    .line 308
    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "AccountSyncSettingsBackupHelper"

    const-string v4, "unable to write the sync settings to the stash file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_3
    goto :goto_4

    .line 311
    :cond_2
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v2, "stashFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 314
    .end local v2    # "stashFile":Ljava/io/File;
    :cond_3
    :goto_4
    return-void
.end method

.method private serializeAccountSyncSettingsToJSON()Lorg/json/JSONObject;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 128
    .local v1, "accounts":[Landroid/accounts/Account;
    iget-object v2, v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 128
    invoke-static {v2}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 133
    .local v2, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v3, "accountTypeToAuthorities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v2, v6

    .line 137
    .local v7, "syncAdapter":Landroid/content/SyncAdapterType;
    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v8

    if-nez v8, :cond_0

    .line 138
    goto :goto_1

    .line 140
    :cond_0
    iget-object v8, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 141
    iget-object v8, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1
    iget-object v8, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    iget-object v9, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v7    # "syncAdapter":Landroid/content/SyncAdapterType;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 147
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 148
    .local v4, "backupJSON":Lorg/json/JSONObject;
    const-string v6, "version"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 149
    const-string v6, "masterSyncEnabled"

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 151
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 152
    .local v6, "accountJSONArray":Lorg/json/JSONArray;
    array-length v7, v1

    :goto_2
    if-ge v5, v7, :cond_6

    aget-object v8, v1, v5

    .line 153
    .local v8, "account":Landroid/accounts/Account;
    iget-object v9, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 157
    .local v9, "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_5

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 158
    nop

    .line 152
    move-object/from16 v16, v1

    goto :goto_4

    .line 161
    :cond_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 162
    .local v10, "accountJSON":Lorg/json/JSONObject;
    const-string v11, "name"

    iget-object v12, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v11, "type"

    iget-object v12, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 167
    .local v11, "authoritiesJSONArray":Lorg/json/JSONArray;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 168
    .local v13, "authority":Ljava/lang/String;
    invoke-static {v8, v13}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v14

    .line 169
    .local v14, "syncState":I
    invoke-static {v8, v13}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    .line 171
    .local v15, "syncEnabled":Z
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 172
    .local v0, "authorityJSON":Lorg/json/JSONObject;
    move-object/from16 v16, v1

    const-string v1, "name"

    .end local v1    # "accounts":[Landroid/accounts/Account;
    .local v16, "accounts":[Landroid/accounts/Account;
    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v1, "syncState"

    invoke-virtual {v0, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    const-string v1, "syncEnabled"

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 175
    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 176
    .end local v0    # "authorityJSON":Lorg/json/JSONObject;
    .end local v13    # "authority":Ljava/lang/String;
    .end local v14    # "syncState":I
    .end local v15    # "syncEnabled":Z
    nop

    .line 167
    move-object/from16 v1, v16

    move-object/from16 v0, p0

    goto :goto_3

    .line 177
    .end local v16    # "accounts":[Landroid/accounts/Account;
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    :cond_4
    move-object/from16 v16, v1

    .end local v1    # "accounts":[Landroid/accounts/Account;
    .restart local v16    # "accounts":[Landroid/accounts/Account;
    const-string v0, "authorities"

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .end local v8    # "account":Landroid/accounts/Account;
    .end local v9    # "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "accountJSON":Lorg/json/JSONObject;
    .end local v11    # "authoritiesJSONArray":Lorg/json/JSONArray;
    goto :goto_4

    .line 152
    .end local v16    # "accounts":[Landroid/accounts/Account;
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    :cond_5
    move-object/from16 v16, v1

    .end local v1    # "accounts":[Landroid/accounts/Account;
    .restart local v16    # "accounts":[Landroid/accounts/Account;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v16

    move-object/from16 v0, p0

    goto :goto_2

    .line 181
    .end local v16    # "accounts":[Landroid/accounts/Account;
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    :cond_6
    move-object/from16 v16, v1

    .end local v1    # "accounts":[Landroid/accounts/Account;
    .restart local v16    # "accounts":[Landroid/accounts/Account;
    const-string v0, "accounts"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    return-object v4
.end method

.method private writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V
    .locals 4
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "md5Checksum"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    .line 222
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 224
    .local v0, "dataOutput":Ljava/io/DataOutputStream;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 225
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 230
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "output"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->serializeAccountSyncSettingsToJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 104
    .local v0, "dataJSON":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 105
    .local v1, "dataBytes":[B
    invoke-direct {p0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B

    move-result-object v2

    .line 106
    .local v2, "oldMd5Checksum":[B
    invoke-direct {p0, v1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->generateMd5Checksum([B)[B

    move-result-object v3

    .line 107
    .local v3, "newMd5Checksum":[B
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    array-length v4, v1

    .line 109
    .local v4, "dataSize":I
    const-string v5, "account_data"

    invoke-virtual {p2, v5, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 110
    invoke-virtual {p2, v1, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 112
    const-string v5, "AccountSyncSettingsBackupHelper"

    const-string v6, "Backup successful."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v4    # "dataSize":I
    goto :goto_0

    .line 114
    :cond_0
    const-string v4, "AccountSyncSettingsBackupHelper"

    const-string v5, "Old and new MD5 checksums match. Skipping backup."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    invoke-direct {p0, p3, v3}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0    # "dataJSON":Lorg/json/JSONObject;
    .end local v1    # "dataBytes":[B
    .end local v2    # "oldMd5Checksum":[B
    .end local v3    # "newMd5Checksum":[B
    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AccountSyncSettingsBackupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t backup account sync settings\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 8
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .line 246
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 249
    .local v0, "dataBytes":[B
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    .line 250
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 253
    .local v1, "dataString":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 254
    .local v2, "dataJSON":Lorg/json/JSONObject;
    const-string v3, "masterSyncEnabled"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 255
    .local v3, "masterSyncEnabled":Z
    const-string v4, "accounts"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 257
    .local v4, "accountJSONArray":Lorg/json/JSONArray;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    .line 258
    .local v5, "currentMasterSyncEnabled":Z
    if-eqz v5, :cond_0

    .line 260
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :try_start_2
    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 268
    nop

    .line 269
    const-string v6, "AccountSyncSettingsBackupHelper"

    const-string v7, "Restore successful."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v1    # "dataString":Ljava/lang/String;
    .end local v2    # "dataJSON":Lorg/json/JSONObject;
    .end local v3    # "masterSyncEnabled":Z
    .end local v4    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v5    # "currentMasterSyncEnabled":Z
    goto :goto_0

    .line 267
    .restart local v1    # "dataString":Ljava/lang/String;
    .restart local v2    # "dataJSON":Lorg/json/JSONObject;
    .restart local v3    # "masterSyncEnabled":Z
    .restart local v4    # "accountJSONArray":Lorg/json/JSONArray;
    .restart local v5    # "currentMasterSyncEnabled":Z
    :catchall_0
    move-exception v6

    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 270
    .end local v1    # "dataString":Ljava/lang/String;
    .end local v2    # "dataJSON":Lorg/json/JSONObject;
    .end local v3    # "masterSyncEnabled":Z
    .end local v4    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v5    # "currentMasterSyncEnabled":Z
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AccountSyncSettingsBackupHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t restore account sync settings\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 424
    return-void
.end method
