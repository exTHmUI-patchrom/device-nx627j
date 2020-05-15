.class Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;
.super Ljava/lang/Object;
.source "UiccCarrierPrivilegeRules.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 193
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->access$100(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->access$200(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;I)V

    .line 197
    return-void
.end method
