.class public final synthetic Landroid/graphics/drawable/-$$Lambda$AnimatedImageDrawable$dGAkP-tKNvqn_qCWdrQRL806ExQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/graphics/drawable/AnimatedImageDrawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/-$$Lambda$AnimatedImageDrawable$dGAkP-tKNvqn_qCWdrQRL806ExQ;->f$0:Landroid/graphics/drawable/AnimatedImageDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/-$$Lambda$AnimatedImageDrawable$dGAkP-tKNvqn_qCWdrQRL806ExQ;->f$0:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->lambda$postOnAnimationEnd$2(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    return-void
.end method
