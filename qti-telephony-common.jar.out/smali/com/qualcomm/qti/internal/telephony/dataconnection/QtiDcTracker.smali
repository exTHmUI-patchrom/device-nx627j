.class public final Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;
.super Lcom/android/internal/telephony/dataconnection/DcTracker;
.source "QtiDcTracker.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mIccidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;I)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "transportType"    # I

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/Phone;I)V

    .line 38
    const-string v0, "QtiDCT"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".constructor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->fillIccIdSet()V

    .line 46
    return-void
.end method

.method private fillIccIdSet()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991840"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991854"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991855"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991856"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991857"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991858"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991859"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "899186"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991870"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991871"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991872"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991873"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991874"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method private isRecordsLoaded()Z
    .locals 2

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "recordsLoaded":Z
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 52
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v0

    .line 55
    :cond_0
    return v0
.end method


# virtual methods
.method protected allowInitialAttachForOperator()Z
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 96
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 97
    .local v1, "iccId":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    .line 98
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 99
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    const/4 v3, 0x0

    return v3

    .line 105
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method protected getAttachedStatus()Z
    .locals 2

    .line 78
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 80
    .local v0, "dataSub":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 87
    const/4 v1, 0x1

    return v1

    .line 90
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAttachedStatus()Z

    move-result v1

    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method protected onRecordsLoadedOrSubIdChanged()V
    .locals 2

    .line 60
    const-string v0, "onRecordsLoaded: createAllApnList"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    const v1, 0x112001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mAutoAttachOnCreationConfig:Z

    .line 64
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->createAllApnList()V

    .line 65
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->setInitialAttachApn()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const-string v0, "onRecordsLoaded: notifying data availability"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 70
    const-string v0, "simLoaded"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 72
    :cond_1
    const-string v0, "simLoaded"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 73
    return-void
.end method
