.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$fcz5l0a6JlSxs8MXCst7wXG4bUc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$fcz5l0a6JlSxs8MXCst7wXG4bUc;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final handleResult([B)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$fcz5l0a6JlSxs8MXCst7wXG4bUc;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->lambda$switchToProfile$9(Ljava/lang/String;[B)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
