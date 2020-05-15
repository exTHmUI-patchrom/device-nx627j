.class Lcom/android/internal/telephony/uicc/euicc/EuiccCard$2;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

.field final synthetic val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

.field final synthetic val$exceptionHandler:Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;

.field final synthetic val$responseHandler:Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    .line 1129
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$2;->val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$2;->val$responseHandler:Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$2;->val$exceptionHandler:Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1144
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$2;->val$exceptionHandler:Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;->handleException(Ljava/lang/Throwable;)V

    .line 1145
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1129
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$2;->onResult([B)V

    return-void
.end method

.method public onResult([B)V
    .locals 5
    .param p1, "response"    # [B

    .line 1133
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$2;->val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$2;->val$responseHandler:Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;->handleResult([B)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/uicc/euicc/EuiccCardException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1136
    :catch_0
    move-exception v0

    .line 1137
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$2;->val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    new-instance v2, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1137
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1134
    :catch_1
    move-exception v0

    .line 1135
    .local v0, "e":Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$2;->val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    .line 1139
    .end local v0    # "e":Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;
    :goto_0
    nop

    .line 1140
    :goto_1
    return-void
.end method
