.class final Lcom/urbanairship/analytics/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/urbanairship/l;


# direct methods
.method constructor <init>(Lcom/urbanairship/l;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/urbanairship/analytics/d;->a:Lcom/urbanairship/l;

    .line 34
    return-void
.end method


# virtual methods
.method final a()I
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/urbanairship/analytics/d;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.analytics.MAX_TOTAL_DB_SIZE"

    const/high16 v2, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method final a(I)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/urbanairship/analytics/d;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.analytics.MAX_TOTAL_DB_SIZE"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/l;->b(Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method final a(J)V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/urbanairship/analytics/d;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.analytics.LAST_SEND"

    invoke-virtual {v0, v1, p1, p2}, Lcom/urbanairship/l;->b(Ljava/lang/String;J)V

    .line 124
    return-void
.end method

.method final b()I
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/analytics/d;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.analytics.MAX_BATCH_SIZE"

    const v2, 0x7d000

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method final b(I)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/urbanairship/analytics/d;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.analytics.MAX_BATCH_SIZE"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/l;->b(Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method final b(J)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/urbanairship/analytics/d;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.analytics.SCHEDULED_SEND_TIME"

    invoke-virtual {v0, v1, p1, p2}, Lcom/urbanairship/l;->b(Ljava/lang/String;J)V

    .line 142
    return-void
.end method

.method final c()I
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/urbanairship/analytics/d;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.analytics.MAX_WAIT"

    const v2, 0x48190800

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method final c(I)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/urbanairship/analytics/d;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.analytics.MAX_WAIT"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/l;->b(Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method final d()I
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/urbanairship/analytics/d;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.analytics.MIN_BATCH_INTERVAL"

    const v2, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method final d(I)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/urbanairship/analytics/d;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.analytics.MIN_BATCH_INTERVAL"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/l;->b(Ljava/lang/String;I)V

    .line 106
    return-void
.end method

.method final e()J
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/urbanairship/analytics/d;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.analytics.LAST_SEND"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/urbanairship/l;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method final f()J
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/urbanairship/analytics/d;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.analytics.SCHEDULED_SEND_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/urbanairship/l;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method final g()Z
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/urbanairship/analytics/d;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.analytics.ANALYTICS_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
