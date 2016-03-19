.class public Lcom/urbanairship/preference/LocationBackgroundUpdatesAllowedPreference;
.super Lcom/urbanairship/preference/UACheckBoxPreference;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/preference/UACheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Lcom/urbanairship/preference/a$a;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/urbanairship/preference/a$a;->h:Lcom/urbanairship/preference/a$a;

    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/urbanairship/preference/UACheckBoxPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
