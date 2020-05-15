.class public Landroid/telephony/SubscriptionPlan$Builder;
.super Ljava/lang/Object;
.source "SubscriptionPlan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final plan:Landroid/telephony/SubscriptionPlan;


# direct methods
.method public constructor <init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V
    .locals 3
    .param p1, "start"    # Ljava/time/ZonedDateTime;
    .param p2, "end"    # Ljava/time/ZonedDateTime;
    .param p3, "period"    # Ljava/time/Period;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Landroid/telephony/SubscriptionPlan;

    new-instance v1, Landroid/util/RecurrenceRule;

    invoke-direct {v1, p1, p2, p3}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/SubscriptionPlan;-><init>(Landroid/util/RecurrenceRule;Landroid/telephony/SubscriptionPlan$1;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    .line 225
    return-void
.end method

.method public static createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3
    .param p0, "start"    # Ljava/time/ZonedDateTime;
    .param p1, "end"    # Ljava/time/ZonedDateTime;

    .line 235
    invoke-virtual {p1, p0}, Ljava/time/ZonedDateTime;->isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t after start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createRecurring(Ljava/time/ZonedDateTime;Ljava/time/Period;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3
    .param p0, "start"    # Ljava/time/ZonedDateTime;
    .param p1, "period"    # Ljava/time/Period;

    .line 257
    invoke-virtual {p1}, Ljava/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/time/Period;->isNegative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must be positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createRecurringDaily(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3
    .param p0, "start"    # Ljava/time/ZonedDateTime;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3
    .param p0, "start"    # Ljava/time/ZonedDateTime;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/time/Period;->ofMonths(I)Ljava/time/Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static createRecurringWeekly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3
    .param p0, "start"    # Ljava/time/ZonedDateTime;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/telephony/SubscriptionPlan;
    .locals 1

    .line 285
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    return-object v0
.end method

.method public setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 2
    .param p1, "dataLimitBytes"    # J
    .param p3, "dataLimitBehavior"    # I

    .line 310
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 313
    if-ltz p3, :cond_0

    .line 316
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1, p2}, Landroid/telephony/SubscriptionPlan;->access$402(Landroid/telephony/SubscriptionPlan;J)J

    .line 317
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p3}, Landroid/telephony/SubscriptionPlan;->access$502(Landroid/telephony/SubscriptionPlan;I)I

    .line 318
    return-object p0

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Limit behavior must be defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Limit bytes must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3
    .param p1, "dataUsageBytes"    # J
    .param p3, "dataUsageTime"    # J

    .line 329
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 332
    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 335
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1, p2}, Landroid/telephony/SubscriptionPlan;->access$602(Landroid/telephony/SubscriptionPlan;J)J

    .line 336
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p3, p4}, Landroid/telephony/SubscriptionPlan;->access$702(Landroid/telephony/SubscriptionPlan;J)J

    .line 337
    return-object p0

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Usage time must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Usage bytes must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 296
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionPlan;->access$302(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 297
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 290
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionPlan;->access$202(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 291
    return-object p0
.end method
