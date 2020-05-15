.class public final synthetic Lcom/android/internal/view/-$$Lambda$FloatingActionMode$LU5MpPuKYDtwlFAuYhXYfzgLNLE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/view/FloatingActionMode;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/view/FloatingActionMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/-$$Lambda$FloatingActionMode$LU5MpPuKYDtwlFAuYhXYfzgLNLE;->f$0:Lcom/android/internal/view/FloatingActionMode;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/-$$Lambda$FloatingActionMode$LU5MpPuKYDtwlFAuYhXYfzgLNLE;->f$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v0, p1}, Lcom/android/internal/view/FloatingActionMode;->lambda$setFloatingToolbar$0(Lcom/android/internal/view/FloatingActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
