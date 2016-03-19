.class final Lcom/urbanairship/analytics/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private final d:I

.field private final e:I

.field private final f:Z

.field private g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/urbanairship/analytics/b;->b:I

    .line 37
    iput v0, p0, Lcom/urbanairship/analytics/b;->c:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/urbanairship/analytics/b;->g:J

    .line 51
    iput-object p1, p0, Lcom/urbanairship/analytics/b;->a:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/urbanairship/analytics/b;->d:I

    .line 53
    iput p3, p0, Lcom/urbanairship/analytics/b;->e:I

    .line 54
    iput-boolean p4, p0, Lcom/urbanairship/analytics/b;->f:Z

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/analytics/b;->g:J

    .line 56
    return-void
.end method


# virtual methods
.method final a(IJ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 88
    iget v0, p0, Lcom/urbanairship/analytics/b;->c:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/urbanairship/analytics/b;->f:Z

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/analytics/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already added without being removed first. Call Analytics.activityStopped(this) in every activity\'s onStop() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    iput v2, p0, Lcom/urbanairship/analytics/b;->c:I

    .line 96
    :goto_0
    iput-wide p2, p0, Lcom/urbanairship/analytics/b;->g:J

    .line 97
    return-void

    .line 93
    :cond_1
    iput v2, p0, Lcom/urbanairship/analytics/b;->b:I

    goto :goto_0
.end method

.method final a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    iget v2, p0, Lcom/urbanairship/analytics/b;->e:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    .line 65
    iget v2, p0, Lcom/urbanairship/analytics/b;->b:I

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 65
    goto :goto_0

    .line 68
    :cond_2
    iget v2, p0, Lcom/urbanairship/analytics/b;->c:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method final b()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/urbanairship/analytics/b;->g:J

    return-wide v0
.end method

.method final b(IJ)V
    .locals 4

    .prologue
    const/16 v3, 0xe

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 106
    if-nez p1, :cond_2

    .line 107
    iget v0, p0, Lcom/urbanairship/analytics/b;->c:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/urbanairship/analytics/b;->f:Z

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/analytics/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " removed without being manually added first. Call Analytics.activityStarted(this) in every activity\'s onStart() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    :goto_0
    iput v2, p0, Lcom/urbanairship/analytics/b;->c:I

    .line 120
    :goto_1
    iput-wide p2, p0, Lcom/urbanairship/analytics/b;->g:J

    .line 121
    return-void

    .line 109
    :cond_1
    iget v0, p0, Lcom/urbanairship/analytics/b;->e:I

    if-lt v0, v3, :cond_0

    iget v0, p0, Lcom/urbanairship/analytics/b;->b:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/urbanairship/analytics/b;->f:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/analytics/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " removed in Analytics not during the activity\'s onStop() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    :cond_2
    iget v0, p0, Lcom/urbanairship/analytics/b;->d:I

    if-ge v0, v3, :cond_3

    iget v0, p0, Lcom/urbanairship/analytics/b;->c:I

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/urbanairship/analytics/b;->f:Z

    if-eqz v0, :cond_3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/analytics/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was not manually added during onStart(). Call Analytics.activityStarted(this) in every activity\'s onStart() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_3
    iput v2, p0, Lcom/urbanairship/analytics/b;->b:I

    goto :goto_1
.end method
