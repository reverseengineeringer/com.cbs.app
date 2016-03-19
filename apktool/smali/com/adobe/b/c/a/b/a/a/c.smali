.class public final Lcom/adobe/b/c/a/b/a/a/c;
.super Lcom/adobe/b/c/a/b/a/a/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/adobe/b/a/a/f;Lcom/adobe/b/a/b/a;Lcom/adobe/b/a/c;)V
    .locals 7

    .prologue
    .line 38
    const-string v3, "flush_filter"

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/b/c/a/b/a/a/e;-><init>(Lcom/adobe/b/a/a/f;Lcom/adobe/b/a/b/a;Ljava/lang/String;DLcom/adobe/b/a/c;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/adobe/b/c/a/b/a/a/e;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/adobe/b/c/a/b/a/a/e;->b(Ljava/lang/Boolean;)V

    return-void
.end method
