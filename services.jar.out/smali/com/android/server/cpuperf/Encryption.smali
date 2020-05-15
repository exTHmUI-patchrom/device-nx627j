.class public Lcom/android/server/cpuperf/Encryption;
.super Ljava/lang/Object;
.source "Encryption.java"


# static fields
.field private static final CONSTANT_KEY:Ljava/lang/String; = "?<$-)~@NB1!huan6#beyond8*&^,(+=>"

.field private static final KEYSTORE_PW:[C

.field private static final KEY_STORE_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Encryption"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "@#!abAB123"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/server/cpuperf/Encryption;->KEYSTORE_PW:[C

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/system/keystore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cpuperf/Encryption;->KEY_STORE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decryptWithConstantKey(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destPath"    # Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "isSuccess":Z
    const-string v1, "?<$-)~@NB1!huan6#beyond8*&^,(+=>"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/server/cpuperf/Encryption;->encryptFile(Ljava/io/InputStream;Ljava/lang/String;[BZ)Z

    move-result v0

    .line 176
    return v0
.end method

.method static decryptWithConstantKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "isSuccess":Z
    const-string v1, "?<$-)~@NB1!huan6#beyond8*&^,(+=>"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/server/cpuperf/Encryption;->encryptFile(Ljava/lang/String;Ljava/lang/String;[BZ)Z

    move-result v0

    .line 188
    return v0
.end method

.method static decryptWithRandomKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "isSuccess":Z
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/cpuperf/Encryption;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-static {}, Lcom/android/server/cpuperf/Encryption;->loadSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 210
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    :cond_0
    invoke-static {}, Lcom/android/server/cpuperf/Encryption;->generateRandomSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 211
    .restart local v1    # "secretKey":Ljavax/crypto/SecretKey;
    invoke-static {v1}, Lcom/android/server/cpuperf/Encryption;->storeSecretKey(Ljavax/crypto/SecretKey;)Z

    .line 213
    :goto_0
    if-eqz v1, :cond_1

    .line 214
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3}, Lcom/android/server/cpuperf/Encryption;->encryptFile(Ljava/lang/String;Ljava/lang/String;[BZ)Z

    move-result v0

    .line 216
    :cond_1
    return v0
.end method

.method static ecryptWithConstantKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "isSuccess":Z
    const-string v1, "?<$-)~@NB1!huan6#beyond8*&^,(+=>"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/android/server/cpuperf/Encryption;->encryptFile(Ljava/lang/String;Ljava/lang/String;[BZ)Z

    move-result v0

    .line 182
    return v0
.end method

.method static encryptFile(Ljava/io/InputStream;Ljava/lang/String;[BZ)Z
    .locals 11
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "keyByte"    # [B
    .param p3, "isEncrypt"    # Z

    .line 133
    const/4 v0, 0x1

    .line 134
    .local v0, "isSuccess":Z
    const/4 v1, 0x0

    .line 135
    .local v1, "len":I
    const/16 v2, 0x1400

    new-array v2, v2, [B

    .line 136
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 137
    .local v3, "cipherbuffer":[B
    const/4 v4, 0x0

    .line 138
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, p2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 139
    .local v5, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v7, 0x10

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 142
    .local v6, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_0
    const-string v7, "AES/CFB/NoPadding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 143
    .local v7, "cipher":Ljavax/crypto/Cipher;
    if-eqz p3, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    :goto_0
    invoke-virtual {v7, v8, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 145
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v8

    .line 146
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v1, v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 147
    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8, v1}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v8

    move-object v3, v8

    .line 148
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 149
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {v7}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v8

    move-object v3, v8

    .line 152
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 153
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v7    # "cipher":Ljavax/crypto/Cipher;
    if-eqz p0, :cond_2

    .line 160
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 165
    :catch_0
    move-exception v7

    goto :goto_3

    .line 162
    :cond_2
    :goto_2
    nop

    .line 163
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 165
    :goto_3
    nop

    .line 166
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "Encryption"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    .line 158
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    goto :goto_9

    .line 154
    :catch_1
    move-exception v7

    .line 155
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "Encryption"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Encryption exception happen: encryptFile "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    const/4 v0, 0x0

    .line 159
    .end local v7    # "e":Ljava/lang/Exception;
    if-eqz p0, :cond_3

    .line 160
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 165
    :catch_2
    move-exception v7

    goto :goto_5

    .line 162
    :cond_3
    :goto_4
    if-eqz v4, :cond_4

    .line 163
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    .line 165
    :goto_5
    nop

    .line 166
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "Encryption"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    const-string v10, "Encryption exception happen: encryptFile close stream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    const/4 v0, 0x0

    .line 169
    .end local v7    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 168
    :cond_4
    :goto_7
    nop

    .line 170
    :goto_8
    return v0

    .line 158
    :goto_9
    nop

    .line 159
    if-eqz p0, :cond_5

    .line 160
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_a

    .line 165
    :catch_3
    move-exception v8

    goto :goto_b

    .line 162
    :cond_5
    :goto_a
    if-eqz v4, :cond_6

    .line 163
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_c

    .line 165
    :goto_b
    nop

    .line 166
    .local v8, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Encryption exception happen: encryptFile close stream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Encryption"

    invoke-static {v10, v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    const/4 v0, 0x0

    .end local v8    # "e":Ljava/io/IOException;
    nop

    .line 168
    :cond_6
    :goto_c
    throw v7

    nop

    :array_0
    .array-data 1
        0xct
        0x22t
        0x38t
        0x4et
        0x5at
        0x62t
        0x4ct
        0x36t
        0x20t
        0xat
        0xdt
        0x39t
        0x5bt
        0x23t
        0x4ft
        0x18t
    .end array-data
.end method

.method static encryptFile(Ljava/lang/String;Ljava/lang/String;[BZ)Z
    .locals 12
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "keyByte"    # [B
    .param p3, "isEncrypt"    # Z

    .line 90
    const/4 v0, 0x1

    .line 91
    .local v0, "isSuccess":Z
    const/4 v1, 0x0

    .line 92
    .local v1, "len":I
    const/16 v2, 0x1400

    new-array v2, v2, [B

    .line 93
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 94
    .local v3, "cipherbuffer":[B
    const/4 v4, 0x0

    .line 95
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 96
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, p2, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 97
    .local v6, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v8, 0x10

    new-array v8, v8, [B

    fill-array-data v8, :array_0

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 100
    .local v7, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_0
    const-string v8, "AES/CFB/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 101
    .local v8, "cipher":Ljavax/crypto/Cipher;
    if-eqz p3, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x2

    :goto_0
    invoke-virtual {v8, v9, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 103
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v9

    .line 104
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v9

    .line 105
    :goto_1
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    move v1, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 106
    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9, v1}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v9

    move-object v3, v9

    .line 107
    invoke-virtual {v5, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 108
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {v8}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v9

    move-object v3, v9

    .line 111
    invoke-virtual {v5, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 112
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v8    # "cipher":Ljavax/crypto/Cipher;
    nop

    .line 119
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    .line 124
    :catch_0
    move-exception v8

    goto :goto_3

    .line 121
    :goto_2
    nop

    .line 122
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 124
    :goto_3
    nop

    .line 125
    .local v8, "e":Ljava/io/IOException;
    const-string v9, "Encryption"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    .line 117
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    goto :goto_9

    .line 113
    :catch_1
    move-exception v8

    .line 114
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v9, "Encryption"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Encryption exception happen: encryptFile "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    const/4 v0, 0x0

    .line 118
    .end local v8    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_2

    .line 119
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    .line 124
    :catch_2
    move-exception v8

    goto :goto_5

    .line 121
    :cond_2
    :goto_4
    if-eqz v5, :cond_3

    .line 122
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    .line 124
    :goto_5
    nop

    .line 125
    .local v8, "e":Ljava/io/IOException;
    const-string v9, "Encryption"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    const-string v11, "Encryption exception happen: encryptFile close stream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const/4 v0, 0x0

    .line 128
    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 127
    :cond_3
    :goto_7
    nop

    .line 129
    :goto_8
    return v0

    .line 117
    :goto_9
    nop

    .line 118
    if-eqz v4, :cond_4

    .line 119
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_a

    .line 124
    :catch_3
    move-exception v9

    goto :goto_b

    .line 121
    :cond_4
    :goto_a
    if-eqz v5, :cond_5

    .line 122
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_c

    .line 124
    :goto_b
    nop

    .line 125
    .local v9, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Encryption exception happen: encryptFile close stream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Encryption"

    invoke-static {v11, v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const/4 v0, 0x0

    .end local v9    # "e":Ljava/io/IOException;
    nop

    .line 127
    :cond_5
    :goto_c
    throw v8

    nop

    :array_0
    .array-data 1
        0xct
        0x22t
        0x38t
        0x4et
        0x5at
        0x62t
        0x4ct
        0x36t
        0x20t
        0xat
        0xdt
        0x39t
        0x5bt
        0x23t
        0x4ft
        0x18t
    .end array-data
.end method

.method static encryptWithRandomKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "isSuccess":Z
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/cpuperf/Encryption;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-static {}, Lcom/android/server/cpuperf/Encryption;->loadSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 196
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    :cond_0
    invoke-static {}, Lcom/android/server/cpuperf/Encryption;->generateRandomSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 197
    .restart local v1    # "secretKey":Ljavax/crypto/SecretKey;
    invoke-static {v1}, Lcom/android/server/cpuperf/Encryption;->storeSecretKey(Ljavax/crypto/SecretKey;)Z

    .line 199
    :goto_0
    if-eqz v1, :cond_1

    .line 200
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, p1, v2, v3}, Lcom/android/server/cpuperf/Encryption;->encryptFile(Ljava/lang/String;Ljava/lang/String;[BZ)Z

    move-result v0

    .line 202
    :cond_1
    return v0
.end method

.method static generateRandomSecretKey()Ljavax/crypto/SecretKey;
    .locals 4

    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, "secretKey":Ljavax/crypto/SecretKey;
    :try_start_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 31
    .local v1, "secureRandom":Ljava/security/SecureRandom;
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 32
    .local v2, "keyGenerator":Ljavax/crypto/KeyGenerator;
    const/16 v3, 0x100

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 33
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 36
    .end local v1    # "secureRandom":Ljava/security/SecureRandom;
    .end local v2    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    goto :goto_0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "Encryption"

    const-string v3, "Encryption exception happen: generateRandomSecretKey"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-object v0
.end method

.method static loadSecretKey()Ljavax/crypto/SecretKey;
    .locals 6

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "secretKey":Ljavax/crypto/SecretKey;
    const/4 v1, 0x0

    .line 71
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 72
    .local v2, "keyStore":Ljava/security/KeyStore;
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/android/server/cpuperf/Encryption;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 73
    sget-object v3, Lcom/android/server/cpuperf/Encryption;->KEYSTORE_PW:[C

    invoke-virtual {v2, v1, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 74
    const-string/jumbo v3, "key1"

    sget-object v4, Lcom/android/server/cpuperf/Encryption;->KEYSTORE_PW:[C

    invoke-virtual {v2, v3, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v3

    check-cast v3, Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 79
    .end local v2    # "keyStore":Ljava/security/KeyStore;
    nop

    .line 80
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Encryption"

    const-string v4, "Encryption exception happen: loadSecretKey close stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 84
    :cond_0
    :goto_0
    goto :goto_1

    .line 78
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 75
    :catch_1
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Encryption"

    const-string v4, "Encryption exception happen: loadSecretKey"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 80
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 86
    :goto_1
    return-object v0

    .line 78
    :goto_2
    nop

    .line 79
    if-eqz v1, :cond_1

    .line 80
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 82
    :catch_2
    move-exception v3

    .line 83
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Encryption"

    const-string v5, "Encryption exception happen: loadSecretKey close stream"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 84
    :cond_1
    :goto_3
    throw v2
.end method

.method static storeSecretKey(Ljavax/crypto/SecretKey;)Z
    .locals 7
    .param p0, "secretKey"    # Ljavax/crypto/SecretKey;

    .line 41
    const/4 v0, 0x1

    .line 42
    .local v0, "isSuccess":Z
    const/4 v1, 0x0

    move-object v2, v1

    .line 44
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 45
    .local v3, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v3, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 46
    new-instance v1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v1, p0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 47
    .local v1, "entry":Ljava/security/KeyStore$Entry;
    new-instance v4, Ljava/security/KeyStore$PasswordProtection;

    sget-object v5, Lcom/android/server/cpuperf/Encryption;->KEYSTORE_PW:[C

    invoke-direct {v4, v5}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 48
    .local v4, "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    const-string/jumbo v5, "key1"

    invoke-virtual {v3, v5, v1, v4}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 49
    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v6, Lcom/android/server/cpuperf/Encryption;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 50
    sget-object v5, Lcom/android/server/cpuperf/Encryption;->KEYSTORE_PW:[C

    invoke-virtual {v3, v2, v5}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v1    # "entry":Ljava/security/KeyStore$Entry;
    .end local v3    # "keyStore":Ljava/security/KeyStore;
    .end local v4    # "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    nop

    .line 57
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Encryption"

    const-string v4, "Encryption exception happen: storeSecretKey"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    const/4 v0, 0x0

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_0

    .line 57
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 59
    :catch_1
    move-exception v1

    .line 60
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Encryption"

    const-string v4, "Encryption exception happen: storeSecretKey close stream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    const/4 v0, 0x0

    .line 63
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    nop

    .line 64
    :goto_1
    return v0

    .line 55
    :goto_2
    nop

    .line 56
    if-eqz v2, :cond_1

    .line 57
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 59
    :catch_2
    move-exception v3

    .line 60
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Encryption"

    const-string v5, "Encryption exception happen: storeSecretKey close stream"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    const/4 v0, 0x0

    .line 61
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 62
    :cond_1
    :goto_3
    throw v1
.end method
