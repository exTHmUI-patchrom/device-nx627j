.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;
.super Ljava/lang/Object;
.source "IsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IsimUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfIsimPcscfLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;

    .line 240
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .line 242
    const-string v0, "EF_ISIM_PCSCF"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 245
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 246
    .local v0, "pcscflist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_PCSCF record count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1002(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[Ljava/lang/String;)[Ljava/lang/String;

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 250
    .local v3, "identity":[B
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$600([B)Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "pcscf":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1000(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    .local v6, "i":I
    aput-object v4, v5, v1

    .line 253
    .end local v1    # "i":I
    .end local v3    # "identity":[B
    .end local v4    # "pcscf":Ljava/lang/String;
    nop

    .line 249
    move v1, v6

    goto :goto_0

    .line 254
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-void
.end method
