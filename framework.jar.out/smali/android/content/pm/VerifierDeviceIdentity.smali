.class public Landroid/content/pm/VerifierDeviceIdentity;
.super Ljava/lang/Object;
.source "VerifierDeviceIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/VerifierDeviceIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODE:[C

.field private static final GROUP_SIZE:I = 0x4

.field private static final LONG_SIZE:I = 0xd

.field private static final SEPARATOR:C = '-'


# instance fields
.field private final mIdentity:J

.field private final mIdentityString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/pm/VerifierDeviceIdentity;->ENCODE:[C

    .line 233
    new-instance v0, Landroid/content/pm/VerifierDeviceIdentity$1;

    invoke-direct {v0}, Landroid/content/pm/VerifierDeviceIdentity$1;-><init>()V

    sput-object v0, Landroid/content/pm/VerifierDeviceIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
    .end array-data
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "identity"    # J

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    .line 63
    invoke-static {p1, p2}, Landroid/content/pm/VerifierDeviceIdentity;->encodeBase32(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 69
    .local v0, "identity":J
    iput-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    .line 70
    invoke-static {v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;->encodeBase32(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/VerifierDeviceIdentity$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/VerifierDeviceIdentity$1;

    .line 37
    invoke-direct {p0, p1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static final decodeBase32([B)J
    .locals 12
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 141
    const-wide/16 v0, 0x0

    .line 142
    .local v0, "output":J
    const/4 v2, 0x0

    .line 144
    .local v2, "numParsed":I
    array-length v3, p0

    .line 145
    .local v3, "N":I
    const/4 v4, 0x0

    .line 145
    .local v4, "i":I
    :goto_0
    const/16 v5, 0xd

    if-ge v4, v3, :cond_9

    .line 146
    aget-byte v6, p0, v4

    .line 153
    .local v6, "group":I
    const/16 v7, 0x41

    if-gt v7, v6, :cond_0

    const/16 v7, 0x5a

    if-gt v6, v7, :cond_0

    .line 154
    add-int/lit8 v7, v6, -0x41

    .line 154
    .local v7, "value":I
    :goto_1
    goto :goto_2

    .line 155
    .end local v7    # "value":I
    :cond_0
    const/16 v7, 0x32

    if-gt v7, v6, :cond_1

    const/16 v7, 0x37

    if-gt v6, v7, :cond_1

    .line 156
    add-int/lit8 v7, v6, -0x18

    goto :goto_1

    .line 157
    :cond_1
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_2

    .line 158
    goto :goto_3

    .line 159
    :cond_2
    const/16 v7, 0x61

    if-gt v7, v6, :cond_3

    const/16 v7, 0x7a

    if-gt v6, v7, :cond_3

    .line 161
    add-int/lit8 v7, v6, -0x61

    goto :goto_1

    .line 162
    :cond_3
    const/16 v7, 0x30

    if-ne v6, v7, :cond_4

    .line 164
    const/16 v7, 0xe

    goto :goto_1

    .line 165
    :cond_4
    const/16 v7, 0x31

    if-ne v6, v7, :cond_8

    .line 167
    const/16 v7, 0x8

    goto :goto_1

    .line 169
    .restart local v7    # "value":I
    :goto_2
    nop

    .line 172
    const/4 v8, 0x5

    shl-long v8, v0, v8

    int-to-long v10, v7

    or-long v0, v8, v10

    .line 173
    add-int/lit8 v2, v2, 0x1

    .line 175
    const/4 v8, 0x1

    if-ne v2, v8, :cond_6

    .line 176
    and-int/lit8 v5, v7, 0xf

    if-ne v5, v7, :cond_5

    .line 176
    .end local v6    # "group":I
    .end local v7    # "value":I
    goto :goto_3

    .line 177
    .restart local v6    # "group":I
    .restart local v7    # "value":I
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "illegal start character; will overflow"

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 179
    :cond_6
    if-gt v2, v5, :cond_7

    .line 145
    .end local v6    # "group":I
    .end local v7    # "value":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    .restart local v6    # "group":I
    .restart local v7    # "value":I
    :cond_7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "too long; should have 13 characters"

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 169
    .end local v7    # "value":I
    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "base base-32 character: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 184
    .end local v4    # "i":I
    .end local v6    # "group":I
    :cond_9
    if-ne v2, v5, :cond_a

    .line 188
    return-wide v0

    .line 185
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "too short; should have 13 characters"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static final encodeBase32(J)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # J

    .line 107
    sget-object v0, Landroid/content/pm/VerifierDeviceIdentity;->ENCODE:[C

    .line 113
    .local v0, "alphabet":[C
    const/16 v1, 0x10

    new-array v1, v1, [C

    .line 115
    .local v1, "encoded":[C
    array-length v2, v1

    .line 116
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0xd

    if-ge v3, v4, :cond_1

    .line 123
    if-lez v3, :cond_0

    rem-int/lit8 v4, v3, 0x4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 124
    add-int/lit8 v2, v2, -0x1

    const/16 v4, 0x2d

    aput-char v4, v1, v2

    .line 130
    :cond_0
    const-wide/16 v4, 0x1f

    and-long/2addr v4, p0

    long-to-int v4, v4

    .line 131
    .local v4, "group":I
    const/4 v5, 0x5

    ushr-long/2addr p0, v5

    .line 133
    add-int/lit8 v2, v2, -0x1

    aget-char v5, v0, v4

    aput-char v5, v1, v2

    .line 116
    .end local v4    # "group":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v3    # "i":I
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static generate()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 2

    .line 79
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 80
    .local v0, "sr":Ljava/security/SecureRandom;
    invoke-static {v0}, Landroid/content/pm/VerifierDeviceIdentity;->generate(Ljava/util/Random;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v1

    return-object v1
.end method

.method static generate(Ljava/util/Random;)Landroid/content/pm/VerifierDeviceIdentity;
    .locals 3
    .param p0, "rng"    # Ljava/util/Random;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 93
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    .line 94
    .local v0, "identity":J
    new-instance v2, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-direct {v2, v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    return-object v2
.end method

.method public static parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;
    .locals 4
    .param p0, "deviceIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 215
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .local v0, "input":[B
    nop

    .line 217
    nop

    .line 220
    new-instance v1, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-static {v0}, Landroid/content/pm/VerifierDeviceIdentity;->decodeBase32([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    return-object v1

    .line 216
    .end local v0    # "input":[B
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad base-32 characters in input"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 198
    instance-of v0, p1, Landroid/content/pm/VerifierDeviceIdentity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 199
    return v1

    .line 202
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/pm/VerifierDeviceIdentity;

    .line 203
    .local v0, "o":Landroid/content/pm/VerifierDeviceIdentity;
    iget-wide v2, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    iget-wide v4, v0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 193
    iget-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 230
    iget-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 231
    return-void
.end method
