.class Landroid/graphics/drawable/AnimatedRotateDrawable$1;
.super Ljava/lang/Object;
.source "AnimatedRotateDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedRotateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 272
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 277
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$300(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$216(Landroid/graphics/drawable/AnimatedRotateDrawable;F)F

    .line 278
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$200(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$300(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 279
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$202(Landroid/graphics/drawable/AnimatedRotateDrawable;F)F

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->invalidateSelf()V

    .line 282
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$400(Landroid/graphics/drawable/AnimatedRotateDrawable;)V

    .line 283
    return-void
.end method
