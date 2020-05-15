.class Lcom/android/internal/app/PlatLogoActivity$2;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/PlatLogoActivity;

    .line 286
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .line 289
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v0, v0, Lcom/android/internal/app/PlatLogoActivity;->bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

    long-to-float v1, p2

    const v2, 0x476a6000    # 60000.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->setOffset(F)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v0, v0, Lcom/android/internal/app/PlatLogoActivity;->bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->invalidateSelf()V

    .line 291
    return-void
.end method
