.class public Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;
.super Ljava/lang/Object;
.source "WebViewLibraryLoader.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewNativeLibrary"
.end annotation


# instance fields
.field public final path:Ljava/lang/String;

.field public final size:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # J

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;->path:Ljava/lang/String;

    .line 323
    iput-wide p2, p0, Landroid/webkit/WebViewLibraryLoader$WebViewNativeLibrary;->size:J

    .line 324
    return-void
.end method
