.class public Lcom/android/internal/telephony/CarrierInfoManager;
.super Ljava/lang/Object;
.source "CarrierInfoManager.java"


# static fields
.field private static final KEY_TYPE:Ljava/lang/String; = "KEY_TYPE"

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierInfoManager"

.field private static final RESET_CARRIER_KEY_RATE_LIMIT:I = 0x2932e00


# instance fields
.field private mLastAccessResetCarrierKey:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierInfoManager;->mLastAccessResetCarrierKey:J

    return-void
.end method

.method public static deleteAllCarrierKeysForImsiEncryption(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 239
    const-string v0, "CarrierInfoManager"

    const-string v1, "deleting ALL carrier keys from db"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CarrierInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static deleteCarrierInfoForImsiEncryption(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 211
    const-string v0, "CarrierInfoManager"

    const-string v1, "deleting carrier key from db"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v0, ""

    .line 213
    .local v0, "mcc":Ljava/lang/String;
    const-string v1, ""

    .line 214
    .local v1, "mnc":Ljava/lang/String;
    const-string v2, "phone"

    .line 215
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 216
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "simOperator":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 218
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 226
    .local v4, "mContentResolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v6, "mcc=? and mnc=?"

    .line 227
    .local v6, "whereClause":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object v0, v7, v5

    const/4 v5, 0x1

    aput-object v1, v7, v5

    move-object v5, v7

    .line 228
    .local v5, "whereArgs":[Ljava/lang/String;
    sget-object v7, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7, v6, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v5    # "whereArgs":[Ljava/lang/String;
    .end local v6    # "whereClause":Ljava/lang/String;
    goto :goto_0

    .line 229
    :catch_0
    move-exception v5

    .line 230
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "CarrierInfoManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delete failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 221
    .end local v4    # "mContentResolver":Landroid/content/ContentResolver;
    :cond_0
    const-string v4, "CarrierInfoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid networkOperator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public static getCarrierInfoForImsiEncryption(ILandroid/content/Context;)Landroid/telephony/ImsiEncryptionInfo;
    .locals 22
    .param p0, "keyType"    # I
    .param p1, "context"    # Landroid/content/Context;

    move/from16 v8, p0

    .line 61
    const-string v0, ""

    .line 62
    .local v0, "mcc":Ljava/lang/String;
    const-string v1, ""

    .line 63
    .local v1, "mnc":Ljava/lang/String;
    const-string v2, "phone"

    .line 64
    move-object/from16 v9, p1

    invoke-virtual {v9, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 65
    .local v10, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v11

    .line 66
    .local v11, "simOperator":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v12, 0x0

    if-nez v2, :cond_7

    .line 67
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v11, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 68
    .end local v0    # "mcc":Ljava/lang/String;
    .local v13, "mcc":Ljava/lang/String;
    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 69
    .end local v1    # "mnc":Ljava/lang/String;
    .local v14, "mnc":Ljava/lang/String;
    const-string v0, "CarrierInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "using values for mnc, mcc: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    move-object v1, v12

    .line 78
    .local v1, "findCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 79
    .local v15, "mContentResolver":Landroid/content/ContentResolver;
    const-string v0, "public_key"

    const-string v4, "expiration_time"

    const-string v5, "key_identifier"

    filled-new-array {v0, v4, v5}, [Ljava/lang/String;

    move-result-object v17

    .line 82
    .local v17, "columns":[Ljava/lang/String;
    sget-object v16, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v18, "mcc=? and mnc=? and key_type=?"

    new-array v0, v2, [Ljava/lang/String;

    aput-object v13, v0, v3

    const/4 v2, 0x1

    aput-object v14, v0, v2

    .line 84
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    const/16 v20, 0x0

    .line 82
    move-object/from16 v19, v0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v4, v0

    .line 85
    .end local v1    # "findCursor":Landroid/database/Cursor;
    .local v4, "findCursor":Landroid/database/Cursor;
    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    move-object v12, v4

    goto/16 :goto_1

    .line 89
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-le v0, v2, :cond_1

    .line 90
    :try_start_2
    const-string v0, "CarrierInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More than 1 row found for the keyType: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 102
    .end local v15    # "mContentResolver":Landroid/content/ContentResolver;
    .end local v17    # "columns":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v1, v4

    goto/16 :goto_6

    .line 99
    :catch_0
    move-exception v0

    move-object v1, v4

    goto/16 :goto_2

    .line 97
    :catch_1
    move-exception v0

    move-object v1, v4

    goto/16 :goto_4

    .line 92
    .restart local v15    # "mContentResolver":Landroid/content/ContentResolver;
    .restart local v17    # "columns":[Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_3
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 93
    .local v6, "carrier_key":[B
    new-instance v7, Ljava/util/Date;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 94
    .local v7, "expirationTime":Ljava/util/Date;
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "keyIdentifier":Ljava/lang/String;
    new-instance v0, Landroid/telephony/ImsiEncryptionInfo;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v0

    move-object v2, v13

    move-object v3, v14

    move-object v12, v4

    move v4, v8

    .end local v4    # "findCursor":Landroid/database/Cursor;
    .local v12, "findCursor":Landroid/database/Cursor;
    :try_start_4
    invoke-direct/range {v1 .. v7}, Landroid/telephony/ImsiEncryptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/util/Date;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 102
    if-eqz v12, :cond_2

    .line 103
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_2
    return-object v0

    .line 102
    .end local v5    # "keyIdentifier":Ljava/lang/String;
    .end local v6    # "carrier_key":[B
    .end local v7    # "expirationTime":Ljava/util/Date;
    .end local v12    # "findCursor":Landroid/database/Cursor;
    .end local v15    # "mContentResolver":Landroid/content/ContentResolver;
    .end local v17    # "columns":[Ljava/lang/String;
    .restart local v4    # "findCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v12, v4

    move-object v1, v12

    .end local v4    # "findCursor":Landroid/database/Cursor;
    .restart local v12    # "findCursor":Landroid/database/Cursor;
    goto/16 :goto_6

    .line 99
    .end local v12    # "findCursor":Landroid/database/Cursor;
    .restart local v4    # "findCursor":Landroid/database/Cursor;
    :catch_2
    move-exception v0

    move-object v12, v4

    move-object v1, v12

    .end local v4    # "findCursor":Landroid/database/Cursor;
    .restart local v12    # "findCursor":Landroid/database/Cursor;
    goto :goto_2

    .line 97
    .end local v12    # "findCursor":Landroid/database/Cursor;
    .restart local v4    # "findCursor":Landroid/database/Cursor;
    :catch_3
    move-exception v0

    move-object v12, v4

    move-object v1, v12

    .end local v4    # "findCursor":Landroid/database/Cursor;
    .restart local v12    # "findCursor":Landroid/database/Cursor;
    goto :goto_4

    .line 86
    .end local v12    # "findCursor":Landroid/database/Cursor;
    .restart local v4    # "findCursor":Landroid/database/Cursor;
    .restart local v15    # "mContentResolver":Landroid/content/ContentResolver;
    .restart local v17    # "columns":[Ljava/lang/String;
    :cond_3
    move-object v12, v4

    .end local v4    # "findCursor":Landroid/database/Cursor;
    .restart local v12    # "findCursor":Landroid/database/Cursor;
    :goto_1
    :try_start_5
    const-string v0, "CarrierInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No rows found for keyType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 87
    nop

    .line 102
    if-eqz v12, :cond_4

    .line 103
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_4
    const/4 v1, 0x0

    return-object v1

    .line 102
    .end local v15    # "mContentResolver":Landroid/content/ContentResolver;
    .end local v17    # "columns":[Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v1, v12

    goto :goto_6

    .line 99
    :catch_4
    move-exception v0

    move-object v1, v12

    goto :goto_2

    .line 97
    :catch_5
    move-exception v0

    move-object v1, v12

    goto :goto_4

    .line 102
    .end local v12    # "findCursor":Landroid/database/Cursor;
    .restart local v1    # "findCursor":Landroid/database/Cursor;
    :catchall_3
    move-exception v0

    goto :goto_6

    .line 99
    :catch_6
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    const-string v2, "CarrierInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_5

    .line 103
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 97
    :catch_7
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_4
    :try_start_7
    const-string v2, "CarrierInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad arguments:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 102
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v1, :cond_5

    goto :goto_3

    .line 106
    :cond_5
    :goto_5
    const/4 v2, 0x0

    return-object v2

    .line 102
    :goto_6
    if-eqz v1, :cond_6

    .line 103
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 71
    .end local v13    # "mcc":Ljava/lang/String;
    .end local v14    # "mnc":Ljava/lang/String;
    .local v0, "mcc":Ljava/lang/String;
    .local v1, "mnc":Ljava/lang/String;
    :cond_7
    const-string v2, "CarrierInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid networkOperator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v2, 0x0

    return-object v2
.end method

.method public static setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V
    .locals 3
    .param p0, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 178
    const-string v0, "CarrierInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inserting carrier key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CarrierInfoManager;->updateOrInsertCarrierKey(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V

    .line 181
    return-void
.end method

.method public static updateOrInsertCarrierKey(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V
    .locals 13
    .param p0, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 116
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 117
    .local v0, "keyBytes":[B
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 118
    .local v1, "mContentResolver":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v2

    .line 121
    .local v2, "tm":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v3, "contentValues":Landroid/content/ContentValues;
    const-string v4, "mcc"

    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v4, "mnc"

    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v4, "key_type"

    .line 125
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 124
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v4, "key_identifier"

    .line 127
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v4, "public_key"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 129
    const-string v4, "expiration_time"

    .line 130
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 129
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const/4 v4, 0x1

    move v5, v4

    .line 133
    .local v5, "downloadSuccessfull":Z
    :try_start_0
    const-string v6, "CarrierInfoManager"

    const-string v7, "Inserting imsiEncryptionInfo into db"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v6, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result v4

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeCarrierKeyEvent(IIZ)V

    .line 163
    goto/16 :goto_1

    .line 162
    :catchall_0
    move-exception v4

    goto/16 :goto_2

    .line 158
    :catch_0
    move-exception v4

    .line 159
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "CarrierInfoManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error inserting/updating values:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v5, 0x0

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 135
    :catch_1
    move-exception v6

    .line 136
    .local v6, "e":Landroid/database/sqlite/SQLiteConstraintException;
    const-string v7, "CarrierInfoManager"

    const-string v8, "Insert failed, updating imsiEncryptionInfo into db"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v7, "updatedValues":Landroid/content/ContentValues;
    const-string v8, "public_key"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 139
    const-string v8, "expiration_time"

    .line 140
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 139
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    const-string v8, "key_identifier"

    .line 142
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v9

    .line 141
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    sget-object v8, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "mcc=? and mnc=? and key_type=?"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 147
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getMcc()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 148
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getMnc()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    const/4 v4, 0x2

    .line 149
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 144
    invoke-virtual {v1, v8, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 150
    .local v4, "nRows":I
    if-nez v4, :cond_0

    .line 151
    const-string v8, "CarrierInfoManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error updating values:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    const/4 v5, 0x0

    .line 157
    .end local v4    # "nRows":I
    :cond_0
    goto/16 :goto_0

    .line 154
    :catch_2
    move-exception v4

    .line 155
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "CarrierInfoManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error updating values:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    const/4 v4, 0x0

    .line 162
    .end local v5    # "downloadSuccessfull":Z
    .end local v6    # "e":Landroid/database/sqlite/SQLiteConstraintException;
    .end local v7    # "updatedValues":Landroid/content/ContentValues;
    .local v4, "downloadSuccessfull":Z
    move v5, v4

    goto/16 :goto_0

    .line 164
    .end local v4    # "downloadSuccessfull":Z
    .restart local v5    # "downloadSuccessfull":Z
    :goto_1
    return-void

    .line 162
    :goto_2
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result v6

    invoke-virtual {v2, p2, v6, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeCarrierKeyEvent(IIZ)V

    throw v4
.end method


# virtual methods
.method public resetCarrierKeysForImsiEncryption(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPhoneId"    # I

    .line 192
    const-string v0, "CarrierInfoManager"

    const-string v1, "resetting carrier key"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 195
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/telephony/CarrierInfoManager;->mLastAccessResetCarrierKey:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2932e00

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 196
    const-string v2, "CarrierInfoManager"

    const-string v3, "resetCarrierKeysForImsiEncryption: Access rate exceeded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 199
    :cond_0
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierInfoManager;->mLastAccessResetCarrierKey:J

    .line 200
    invoke-static {p1}, Lcom/android/internal/telephony/CarrierInfoManager;->deleteCarrierInfoForImsiEncryption(Landroid/content/Context;)V

    .line 201
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.ACTION_CARRIER_CERTIFICATE_DOWNLOAD"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, "resetIntent":Landroid/content/Intent;
    const-string v3, "phone"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 204
    return-void
.end method
