.class public Landroid/service/notification/NotificationListenerService$Ranking;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ranking"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$Ranking$UserSentiment;
    }
.end annotation


# static fields
.field public static final USER_SENTIMENT_NEGATIVE:I = -0x1

.field public static final USER_SENTIMENT_NEUTRAL:I = 0x0

.field public static final USER_SENTIMENT_POSITIVE:I = 0x1

.field public static final VISIBILITY_NO_OVERRIDE:I = -0x3e8


# instance fields
.field private mChannel:Landroid/app/NotificationChannel;

.field private mHidden:Z

.field private mImportance:I

.field private mImportanceExplanation:Ljava/lang/CharSequence;

.field private mIsAmbient:Z

.field private mKey:Ljava/lang/String;

.field private mMatchesInterruptionFilter:Z

.field private mOverrideGroupKey:Ljava/lang/String;

.field private mOverridePeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRank:I

.field private mShowBadge:Z

.field private mSnoozeCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private mSuppressedVisualEffects:I

.field private mUserSentiment:I

.field private mVisibilityOverride:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1411
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 1427
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    .line 1430
    return-void
.end method

.method public static importanceToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "importance"    # I

    .line 1608
    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1621
    :pswitch_0
    const-string v0, "HIGH"

    return-object v0

    .line 1618
    :pswitch_1
    const-string v0, "DEFAULT"

    return-object v0

    .line 1616
    :pswitch_2
    const-string v0, "LOW"

    return-object v0

    .line 1614
    :pswitch_3
    const-string v0, "MIN"

    return-object v0

    .line 1612
    :pswitch_4
    const-string v0, "NONE"

    return-object v0

    .line 1610
    :cond_0
    const-string v0, "UNSPECIFIED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canShowBadge()Z
    .locals 1

    .line 1564
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    return v0
.end method

.method public getAdditionalPeople()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1543
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChannel()Landroid/app/NotificationChannel;
    .locals 1

    .line 1521
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public getImportance()I
    .locals 1

    .line 1495
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    return v0
.end method

.method public getImportanceExplanation()Ljava/lang/CharSequence;
    .locals 1

    .line 1505
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1436
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideGroupKey()Ljava/lang/String;
    .locals 1

    .line 1513
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .line 1446
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    return v0
.end method

.method public getSnoozeCriteria()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    .line 1555
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSuppressedVisualEffects()I
    .locals 1

    .line 1474
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    return v0
.end method

.method public getUserSentiment()I
    .locals 1

    .line 1532
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    return v0
.end method

.method public getVisibilityOverride()I
    .locals 1

    .line 1465
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    return v0
.end method

.method public isAmbient()Z
    .locals 1

    .line 1454
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .line 1574
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    return v0
.end method

.method public matchesInterruptionFilter()Z
    .locals 1

    .line 1485
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    return v0
.end method

.method public populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZ)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "matchesInterruptionFilter"    # Z
    .param p4, "visibilityOverride"    # I
    .param p5, "suppressedVisualEffects"    # I
    .param p6, "importance"    # I
    .param p7, "explanation"    # Ljava/lang/CharSequence;
    .param p8, "overrideGroupKey"    # Ljava/lang/String;
    .param p9, "channel"    # Landroid/app/NotificationChannel;
    .param p12, "showBadge"    # Z
    .param p13, "userSentiment"    # I
    .param p14, "hidden"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZIII",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;ZIZ)V"
        }
    .end annotation

    .line 1587
    .local p10, "overridePeople":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p11, "snoozeCriteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;"
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    .line 1588
    iput p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 1589
    const/4 v0, 0x2

    if-ge p6, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    .line 1590
    iput-boolean p3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    .line 1591
    iput p4, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    .line 1592
    iput p5, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    .line 1593
    iput p6, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    .line 1594
    iput-object p7, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    .line 1595
    iput-object p8, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    .line 1596
    iput-object p9, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    .line 1597
    iput-object p10, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    .line 1598
    iput-object p11, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 1599
    iput-boolean p12, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    .line 1600
    iput p13, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    .line 1601
    iput-boolean p14, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    .line 1602
    return-void
.end method
