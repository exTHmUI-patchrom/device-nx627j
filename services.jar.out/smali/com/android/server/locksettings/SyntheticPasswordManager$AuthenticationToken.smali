.class Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationToken"
.end annotation


# instance fields
.field private E0:[B

.field private P1:[B

.field private final mVersion:B

.field private syntheticPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(B)V
    .locals 0
    .param p1, "version"    # B

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-byte p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    .line 155
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 141
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p1, "x1"    # Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 141
    iget-byte v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 141
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p1, "x1"    # [B

    .line 141
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 141
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p1, "x1"    # [B

    .line 141
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object p1
.end method

.method protected static create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .locals 3

    .line 201
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(B)V

    .line 202
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    .line 203
    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    .line 202
    invoke-direct {v0, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    .line 204
    return-object v0
.end method

.method private derivePassword([B)[B
    .locals 3
    .param p1, "personalization"    # [B

    .line 158
    iget-byte v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 159
    new-instance v0, Lcom/android/server/locksettings/SP800Derive;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SP800Derive;-><init>([B)V

    .line 160
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$000()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/locksettings/SP800Derive;->withContext([B[B)[B

    move-result-object v0

    .line 159
    return-object v0

    .line 162
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    .line 163
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 162
    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private initialize([B[B)V
    .locals 3
    .param p1, "P0"    # [B
    .param p2, "P1"    # [B

    .line 188
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    .line 189
    nop

    .line 191
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$600()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 190
    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 189
    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$700()[B

    move-result-object v1

    .line 192
    invoke-static {v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    .line 194
    return-void
.end method


# virtual methods
.method public computeP0()[B
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$700()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveDiskEncryptionKey()[B
    .locals 1

    .line 176
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$300()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveGkPassword()[B
    .locals 1

    .line 172
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$200()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKeyStorePassword()Ljava/lang/String;
    .locals 1

    .line 168
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$100()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public derivePasswordHashFactor()[B
    .locals 1

    .line 184
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$500()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveVendorAuthSecret()[B
    .locals 1

    .line 180
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$400()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public recreate([B)V
    .locals 1
    .param p1, "secret"    # [B

    .line 197
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    .line 198
    return-void
.end method
