.class public Lcom/android/internal/telephony/OemHookIndication;
.super Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication$Stub;
.source "OemHookIndication.java"


# instance fields
.field mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 32
    invoke-direct {p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication$Stub;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/internal/telephony/OemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    .line 34
    return-void
.end method


# virtual methods
.method public oemHookRaw(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/OemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 43
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 45
    .local v0, "response":[B
    iget-object v1, p0, Lcom/android/internal/telephony/OemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    .line 46
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 45
    const/16 v3, 0x404

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 49
    iget-object v1, p0, Lcom/android/internal/telephony/OemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/internal/telephony/OemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 52
    :cond_0
    return-void
.end method
