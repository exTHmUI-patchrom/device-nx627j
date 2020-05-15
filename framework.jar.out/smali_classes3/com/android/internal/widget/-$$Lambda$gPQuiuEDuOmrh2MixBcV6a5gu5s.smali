.class public final synthetic Lcom/android/internal/widget/-$$Lambda$gPQuiuEDuOmrh2MixBcV6a5gu5s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/-$$Lambda$gPQuiuEDuOmrh2MixBcV6a5gu5s;->f$0:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/-$$Lambda$gPQuiuEDuOmrh2MixBcV6a5gu5s;->f$0:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;->onEarlyMatched()V

    return-void
.end method
