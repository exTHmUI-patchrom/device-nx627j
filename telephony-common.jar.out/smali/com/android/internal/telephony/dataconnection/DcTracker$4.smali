.class Lcom/android/internal/telephony/dataconnection/DcTracker$4;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;->sortApnListByPreferred(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field final synthetic val$preferredApnSetId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 3682
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->val$preferredApnSetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)I
    .locals 2
    .param p1, "apn1"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "apn2"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3685
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->val$preferredApnSetId:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3686
    :cond_0
    iget v0, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->val$preferredApnSetId:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 3687
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3682
    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    check-cast p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->compare(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)I

    move-result p1

    return p1
.end method
