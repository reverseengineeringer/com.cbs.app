.class public final Lcom/comscore/b/b;
.super Lcom/comscore/b/c;


# direct methods
.method protected constructor <init>(Lcom/comscore/a/b;Lcom/comscore/b/d;Ljava/lang/String;Z)V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/comscore/b/c;-><init>(Lcom/comscore/a/b;Lcom/comscore/b/d;Ljava/lang/String;ZZZ)V

    new-instance v0, Lcom/comscore/c/a;

    const-string v1, "ns_ap_gs"

    invoke-virtual {p1}, Lcom/comscore/a/b;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/comscore/b/b;->a(Lcom/comscore/c/a;)V

    new-instance v0, Lcom/comscore/c/a;

    const-string v1, "ns_ap_install"

    invoke-virtual {p1}, Lcom/comscore/a/b;->t()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/comscore/b/b;->a(Lcom/comscore/c/a;)V

    new-instance v0, Lcom/comscore/c/a;

    const-string v1, "ns_ap_runs"

    invoke-virtual {p1}, Lcom/comscore/a/b;->s()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/comscore/b/b;->a(Lcom/comscore/c/a;)V

    if-eqz p4, :cond_0

    new-instance v0, Lcom/comscore/c/a;

    const-string v1, "ns_ap_csf"

    const-string v2, "1"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/comscore/b/b;->a(Lcom/comscore/c/a;)V

    :cond_0
    const-string v0, "0"

    invoke-static {}, Lcom/comscore/utils/k;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "1"

    :cond_1
    new-instance v1, Lcom/comscore/c/a;

    const-string v2, "ns_ap_jb"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/comscore/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v1}, Lcom/comscore/b/b;->a(Lcom/comscore/c/a;)V

    new-instance v0, Lcom/comscore/c/a;

    const-string v1, "ns_ap_lastrun"

    invoke-virtual {p1}, Lcom/comscore/a/b;->K()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/comscore/b/b;->a(Lcom/comscore/c/a;)V

    invoke-virtual {p1}, Lcom/comscore/a/b;->y()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lcom/comscore/c/a;

    const-string v2, "ns_ap_updated"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/comscore/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v1}, Lcom/comscore/b/b;->a(Lcom/comscore/c/a;)V

    :cond_2
    invoke-virtual {p1}, Lcom/comscore/a/b;->g()Lcom/comscore/utils/l;

    move-result-object v0

    const-string v1, "exception_ocurrences"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/comscore/c/a;

    const-string v2, "ns_ap_er"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/comscore/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v1}, Lcom/comscore/b/b;->a(Lcom/comscore/c/a;)V

    invoke-virtual {p1}, Lcom/comscore/a/b;->g()Lcom/comscore/utils/l;

    move-result-object v0

    const-string v1, "exception_ocurrences"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->d(Ljava/lang/String;)V

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p1}, Lcom/comscore/a/b;->A()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/InstallReferrerReceiver;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/comscore/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method
