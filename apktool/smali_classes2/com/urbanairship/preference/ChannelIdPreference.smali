.class public Lcom/urbanairship/preference/ChannelIdPreference;
.super Landroid/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/preference/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final a()Lcom/urbanairship/preference/a$a;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/urbanairship/preference/a$a;->i:Lcom/urbanairship/preference/a$a;

    return-object v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1052
    sget-object v1, Lcom/urbanairship/preference/a$a;->i:Lcom/urbanairship/preference/a$a;

    .line 46
    invoke-virtual {v1}, Lcom/urbanairship/preference/a$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 47
    return-object v0
.end method
