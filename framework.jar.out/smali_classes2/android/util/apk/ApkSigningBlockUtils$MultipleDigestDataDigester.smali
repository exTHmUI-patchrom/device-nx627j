.class Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;
.super Ljava/lang/Object;
.source "ApkSigningBlockUtils.java"

# interfaces
.implements Landroid/util/apk/DataDigester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSigningBlockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleDigestDataDigester"
.end annotation


# instance fields
.field private final mMds:[Ljava/security/MessageDigest;


# direct methods
.method constructor <init>([Ljava/security/MessageDigest;)V
    .locals 0
    .param p1, "mds"    # [Ljava/security/MessageDigest;

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    iput-object p1, p0, Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;->mMds:[Ljava/security/MessageDigest;

    .line 789
    return-void
.end method


# virtual methods
.method public consume(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 793
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 794
    iget-object v0, p0, Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;->mMds:[Ljava/security/MessageDigest;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 795
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 796
    invoke-virtual {v4, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 794
    .end local v4    # "md":Ljava/security/MessageDigest;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 798
    :cond_0
    return-void
.end method
