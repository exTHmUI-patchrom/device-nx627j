.class public final Landroid/media/update/ApiLoader;
.super Ljava/lang/Object;
.source "ApiLoader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProvider()Landroid/media/update/StaticProvider;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use MediaSession/Browser instead of hidden MediaSession2/Browser2 APIs."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
