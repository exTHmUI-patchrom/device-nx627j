.class public final Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
.super Ljava/lang/Object;
.source "InstantAppResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/InstantAppResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstantAppDigest"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            ">;"
        }
    .end annotation
.end field

.field static final DIGEST_MASK:I = -0x1000

.field public static final UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

.field private static sRandom:Ljava/util/Random;


# instance fields
.field private final mDigestBytes:[[B

.field private final mDigestPrefix:[I

.field private mDigestPrefixSecure:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 241
    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    const/4 v1, 0x0

    new-array v2, v1, [[B

    new-array v1, v1, [I

    invoke-direct {v0, v2, v1}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>([[B[I)V

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 244
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->sRandom:Ljava/util/Random;

    .line 247
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->sRandom:Ljava/util/Random;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->sRandom:Ljava/util/Random;

    .line 386
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest$1;

    invoke-direct {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest$1;-><init>()V

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 321
    .local v0, "digestCount":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 322
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    goto :goto_1

    .line 324
    :cond_0
    new-array v1, v0, [[B

    iput-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    .line 325
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 326
    iget-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    aput-object v3, v2, v1

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefixSecure:[I

    .line 331
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostName"    # Ljava/lang/String;

    .line 261
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;I)V

    .line 262
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "maxDigests"    # I

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    if-eqz p1, :cond_1

    .line 269
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->generateDigest(Ljava/lang/String;I)[[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    .line 270
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    .line 271
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 272
    iget-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    iget-object v3, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    aget-object v3, v3, v1

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    iget-object v4, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    iget-object v4, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    iget-object v4, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v0

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, -0x1000

    aput v3, v2, v1

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private constructor <init>([[B[I)V
    .locals 0
    .param p1, "digestBytes"    # [[B
    .param p2, "prefix"    # [I

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    .line 283
    iput-object p1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    .line 284
    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;)[[B
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 234
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    return-object v0
.end method

.method private static generateDigest(Ljava/lang/String;I)[[B
    .locals 8
    .param p0, "hostName"    # Ljava/lang/String;
    .param p1, "maxDigests"    # I

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "digests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 290
    .local v1, "digest":Ljava/security/MessageDigest;
    if-gtz p1, :cond_0

    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 292
    .local v2, "hostBytes":[B
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v2    # "hostBytes":[B
    goto :goto_1

    .line 294
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 295
    .local v3, "prevDot":I
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    move v3, v4

    .line 297
    if-gez v3, :cond_1

    .line 298
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 300
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 302
    .local v4, "hostBytes":[B
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    const/4 v5, 0x1

    .line 304
    .local v5, "digestCount":I
    :goto_0
    if-ltz v3, :cond_2

    if-ge v5, p1, :cond_2

    .line 305
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    move v3, v6

    .line 306
    add-int/lit8 v6, v3, 0x1

    .line 307
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v4, v6

    .line 308
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "prevDot":I
    .end local v4    # "hostBytes":[B
    .end local v5    # "digestCount":I
    :cond_2
    :goto_1
    nop

    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    return-object v1

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "could not find digest algorithm"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public getDigestBytes()[[B
    .locals 1

    .line 334
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    return-object v0
.end method

.method public getDigestPrefix()[I
    .locals 1

    .line 338
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    return-object v0
.end method

.method public getDigestPrefixSecure()[I
    .locals 5

    .line 346
    sget-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    if-ne p0, v0, :cond_0

    .line 347
    invoke-virtual {p0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v0

    return-object v0

    .line 348
    :cond_0
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefixSecure:[I

    if-nez v0, :cond_2

    .line 350
    invoke-virtual {p0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v0

    array-length v0, v0

    .line 351
    .local v0, "realSize":I
    add-int/lit8 v1, v0, 0xa

    sget-object v2, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->sRandom:Ljava/util/Random;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 352
    .local v1, "manufacturedSize":I
    invoke-virtual {p0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefixSecure:[I

    .line 353
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 354
    iget-object v3, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefixSecure:[I

    sget-object v4, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->sRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    and-int/lit16 v4, v4, -0x1000

    aput v4, v3, v2

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefixSecure:[I

    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 358
    .end local v0    # "realSize":I
    .end local v1    # "manufacturedSize":I
    :cond_2
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefixSecure:[I

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 368
    sget-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 369
    .local v0, "isUndefined":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 370
    if-eqz v0, :cond_1

    .line 371
    return-void

    .line 373
    :cond_1
    iget-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    if-nez v2, :cond_2

    .line 374
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 376
    :cond_2
    iget-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    nop

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 378
    iget-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 381
    .end local v1    # "i":I
    :cond_3
    :goto_2
    iget-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 382
    iget-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefixSecure:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 383
    return-void
.end method
