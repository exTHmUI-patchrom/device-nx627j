.class Lcom/android/internal/telephony/uicc/UiccCardApplication$2;
.super Ljava/lang/Thread;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryEsnStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 957
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getEsnStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$902(Lcom/android/internal/telephony/uicc/UiccCardApplication;Z)Z

    .line 961
    return-void
.end method
