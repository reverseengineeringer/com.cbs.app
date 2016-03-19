.class public final Lcom/urbanairship/push/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:[I

.field private final d:Landroid/os/Bundle;


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/support/v4/app/RemoteInput;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Landroid/support/v4/app/RemoteInput$Builder;

    iget-object v1, p0, Lcom/urbanairship/push/a/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/push/a/b;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v1

    .line 102
    iget-object v0, p0, Lcom/urbanairship/push/a/b;->c:[I

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/urbanairship/push/a/b;->c:[I

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 104
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/urbanairship/push/a/b;->c:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/urbanairship/push/a/b;->c:[I

    aget v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v1, v2}, Landroid/support/v4/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    .line 110
    :cond_1
    iget v0, p0, Lcom/urbanairship/push/a/b;->b:I

    if-ltz v0, :cond_2

    .line 111
    iget v0, p0, Lcom/urbanairship/push/a/b;->b:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    .line 114
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method
