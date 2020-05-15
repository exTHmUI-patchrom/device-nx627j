.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$L4YPgLjdI8c0_VHmXQ199X1DICE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$L4YPgLjdI8c0_VHmXQ199X1DICE;->f$0:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    return-void
.end method


# virtual methods
.method public final handleException(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$L4YPgLjdI8c0_VHmXQ199X1DICE;->f$0:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->lambda$sendApdu$49(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V

    return-void
.end method
