.class Landroid/util/RecurrenceRule$RecurringIterator;
.super Ljava/lang/Object;
.source "RecurrenceRule.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/RecurrenceRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecurringIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/util/Range<",
        "Ljava/time/ZonedDateTime;",
        ">;>;"
    }
.end annotation


# instance fields
.field cycleEnd:Ljava/time/ZonedDateTime;

.field cycleStart:Ljava/time/ZonedDateTime;

.field i:I

.field final synthetic this$0:Landroid/util/RecurrenceRule;


# direct methods
.method public constructor <init>(Landroid/util/RecurrenceRule;)V
    .locals 4

    .line 197
    iput-object p1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iget-object v0, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    goto :goto_0

    .line 199
    :cond_0
    sget-object v0, Landroid/util/RecurrenceRule;->sClock:Ljava/time/Clock;

    invoke-static {v0}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iget-object p1, p1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 200
    .local p1, "anchor":Ljava/time/ZonedDateTime;
    :goto_0
    invoke-static {}, Landroid/util/RecurrenceRule;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RecurrenceRule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolving using anchor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    .line 205
    :goto_1
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 206
    iget v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    .line 207
    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    goto :goto_1

    .line 211
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 212
    iget v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    .line 213
    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    goto :goto_2

    .line 215
    :cond_3
    return-void
.end method

.method private roundBoundaryTime(Ljava/time/ZonedDateTime;)Ljava/time/ZonedDateTime;
    .locals 3
    .param p1, "boundary"    # Ljava/time/ZonedDateTime;

    .line 223
    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    invoke-virtual {v0}, Landroid/util/RecurrenceRule;->isMonthly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v0

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v1, v1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 226
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    sget-object v1, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    return-object p1
.end method

.method private updateCycle()V
    .locals 3

    .line 218
    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v0, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v1, v1, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    iget v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    invoke-virtual {v1, v2}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/RecurrenceRule$RecurringIterator;->roundBoundaryTime(Ljava/time/ZonedDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    .line 219
    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v0, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v1, v1, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    iget v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/RecurrenceRule$RecurringIterator;->roundBoundaryTime(Ljava/time/ZonedDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    .line 220
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 234
    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/time/ZonedDateTime;",
            ">;"
        }
    .end annotation

    .line 239
    invoke-static {}, Landroid/util/RecurrenceRule;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RecurrenceRule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    new-instance v0, Landroid/util/Range;

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 241
    .local v0, "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    iget v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    .line 242
    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    .line 243
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 192
    invoke-virtual {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->next()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method
