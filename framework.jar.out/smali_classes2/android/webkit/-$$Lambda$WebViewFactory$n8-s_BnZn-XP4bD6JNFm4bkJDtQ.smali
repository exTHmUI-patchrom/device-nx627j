.class public final synthetic Landroid/webkit/-$$Lambda$WebViewFactory$n8-s_BnZn-XP4bD6JNFm4bkJDtQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/webkit/-$$Lambda$WebViewFactory$n8-s_BnZn-XP4bD6JNFm4bkJDtQ;->f$0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/-$$Lambda$WebViewFactory$n8-s_BnZn-XP4bD6JNFm4bkJDtQ;->f$0:Z

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->lambda$setPreloadFlagImp$0(Z)V

    return-void
.end method
