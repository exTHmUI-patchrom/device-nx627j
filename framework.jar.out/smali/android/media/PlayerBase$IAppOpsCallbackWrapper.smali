.class Landroid/media/PlayerBase$IAppOpsCallbackWrapper;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "PlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/PlayerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IAppOpsCallbackWrapper"
.end annotation


# instance fields
.field private final mWeakPB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/PlayerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/PlayerBase;)V
    .locals 1
    .param p1, "pb"    # Landroid/media/PlayerBase;

    .line 416
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    .line 417
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/PlayerBase$IAppOpsCallbackWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    .line 418
    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 422
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_0

    .line 424
    iget-object v0, p0, Landroid/media/PlayerBase$IAppOpsCallbackWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 425
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_0

    .line 426
    invoke-static {v0}, Landroid/media/PlayerBase;->access$000(Landroid/media/PlayerBase;)V

    .line 429
    .end local v0    # "pb":Landroid/media/PlayerBase;
    :cond_0
    return-void
.end method
