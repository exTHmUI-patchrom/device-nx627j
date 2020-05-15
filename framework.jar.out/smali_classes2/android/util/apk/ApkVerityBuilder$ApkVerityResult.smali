.class Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;
.super Ljava/lang/Object;
.source "ApkVerityBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkVerityBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApkVerityResult"
.end annotation


# instance fields
.field public final fsverityData:Ljava/nio/ByteBuffer;

.field public final rootHash:[B


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;[B)V
    .locals 0
    .param p1, "fsverityData"    # Ljava/nio/ByteBuffer;
    .param p2, "rootHash"    # [B

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;->fsverityData:Ljava/nio/ByteBuffer;

    .line 55
    iput-object p2, p0, Landroid/util/apk/ApkVerityBuilder$ApkVerityResult;->rootHash:[B

    .line 56
    return-void
.end method
