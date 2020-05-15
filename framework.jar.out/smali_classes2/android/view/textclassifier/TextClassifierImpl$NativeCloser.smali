.class final Landroid/view/textclassifier/TextClassifierImpl$NativeCloser;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NativeCloser"
.end annotation


# instance fields
.field private final mNative:Landroid/view/textclassifier/TextClassifierImplNative;


# direct methods
.method constructor <init>(Landroid/view/textclassifier/TextClassifierImplNative;)V
    .locals 1
    .param p1, "nativeImpl"    # Landroid/view/textclassifier/TextClassifierImplNative;

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifierImplNative;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$NativeCloser;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    .line 832
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 836
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$NativeCloser;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierImplNative;->close()V

    .line 837
    return-void
.end method
