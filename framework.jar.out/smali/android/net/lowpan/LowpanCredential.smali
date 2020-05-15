.class public Landroid/net/lowpan/LowpanCredential;
.super Ljava/lang/Object;
.source "LowpanCredential.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/lowpan/LowpanCredential;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNSPECIFIED_KEY_INDEX:I


# instance fields
.field private mMasterKey:[B

.field private mMasterKeyIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    new-instance v0, Landroid/net/lowpan/LowpanCredential$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanCredential$1;-><init>()V

    sput-object v0, Landroid/net/lowpan/LowpanCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    .line 38
    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .param p1, "masterKey"    # [B

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    .line 45
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanCredential;->setMasterKey([B)V

    .line 46
    return-void
.end method

.method private constructor <init>([BI)V
    .locals 1
    .param p1, "masterKey"    # [B
    .param p2, "keyIndex"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/net/lowpan/LowpanCredential;->setMasterKey([BI)V

    .line 42
    return-void
.end method

.method static synthetic access$002(Landroid/net/lowpan/LowpanCredential;[B)[B
    .locals 0
    .param p0, "x0"    # Landroid/net/lowpan/LowpanCredential;
    .param p1, "x1"    # [B

    .line 31
    iput-object p1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/lowpan/LowpanCredential;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/lowpan/LowpanCredential;
    .param p1, "x1"    # I

    .line 31
    iput p1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    return p1
.end method

.method public static createMasterKey([B)Landroid/net/lowpan/LowpanCredential;
    .locals 1
    .param p0, "masterKey"    # [B

    .line 49
    new-instance v0, Landroid/net/lowpan/LowpanCredential;

    invoke-direct {v0, p0}, Landroid/net/lowpan/LowpanCredential;-><init>([B)V

    return-object v0
.end method

.method public static createMasterKey([BI)Landroid/net/lowpan/LowpanCredential;
    .locals 1
    .param p0, "masterKey"    # [B
    .param p1, "keyIndex"    # I

    .line 53
    new-instance v0, Landroid/net/lowpan/LowpanCredential;

    invoke-direct {v0, p0, p1}, Landroid/net/lowpan/LowpanCredential;-><init>([BI)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 130
    instance-of v0, p1, Landroid/net/lowpan/LowpanCredential;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 131
    return v1

    .line 133
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/lowpan/LowpanCredential;

    .line 134
    .local v0, "rhs":Landroid/net/lowpan/LowpanCredential;
    iget-object v2, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    iget-object v3, v0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    iget v3, v0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getMasterKey()[B
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 76
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMasterKeyIndex()I
    .locals 1

    .line 80
    iget v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMasterKey()Z
    .locals 1

    .line 84
    iget-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setMasterKey([B)V
    .locals 1
    .param p1, "masterKey"    # [B

    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, [B

    .line 60
    :cond_0
    iput-object p1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    .line 61
    return-void
.end method

.method setMasterKey([BI)V
    .locals 0
    .param p1, "masterKey"    # [B
    .param p2, "keyIndex"    # I

    .line 68
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanCredential;->setMasterKey([B)V

    .line 69
    invoke-virtual {p0, p2}, Landroid/net/lowpan/LowpanCredential;->setMasterKeyIndex(I)V

    .line 70
    return-void
.end method

.method setMasterKeyIndex(I)V
    .locals 0
    .param p1, "keyIndex"    # I

    .line 64
    iput p1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    .line 65
    return-void
.end method

.method public toSensitiveString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "<LowpanCredential"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {p0}, Landroid/net/lowpan/LowpanCredential;->isMasterKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, " MasterKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    iget v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    if-eqz v1, :cond_1

    .line 95
    const-string v1, ", Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 98
    :cond_0
    const-string v1, " empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :cond_1
    :goto_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "<LowpanCredential"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {p0}, Landroid/net/lowpan/LowpanCredential;->isMasterKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v1, " MasterKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    iget v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    if-eqz v1, :cond_1

    .line 117
    const-string v1, ", Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 120
    :cond_0
    const-string v1, " empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    :cond_1
    :goto_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 151
    iget-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 152
    iget v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    return-void
.end method
