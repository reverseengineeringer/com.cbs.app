.class public Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

.field private h:Landroid/preference/ListPreference;

.field private i:Landroid/preference/ListPreference;

.field private j:Landroid/preference/ListPreference;

.field private k:Landroid/preference/ListPreference;

.field private l:Landroid/preference/ListPreference;

.field private m:Landroid/preference/ListPreference;

.field private n:Landroid/preference/ListPreference;

.field private o:Landroid/preference/CheckBoxPreference;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->e:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->f:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->g:Ljava/util/Map;

    .line 73
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->e:Ljava/util/Map;

    const-string v1, "FF"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->e:Ljava/util/Map;

    const-string v1, "BF"

    const-string v2, "75"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->e:Ljava/util/Map;

    const-string v1, "80"

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->e:Ljava/util/Map;

    const-string v1, "3F"

    const-string v2, "25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->f:Ljava/util/Map;

    const-string v1, "FONT_FAMILY_SANS_SERIF"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->f:Ljava/util/Map;

    const-string v1, "FONT_FAMILY_SERIF"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->f:Ljava/util/Map;

    const-string v1, "FONT_FAMILY_MONOSPACED_SANS_SERIF"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->g:Ljava/util/Map;

    const-string v1, "EDGE_TYPE_NONE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->g:Ljava/util/Map;

    const-string v1, "EDGE_TYPE_OUTLINE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->g:Ljava/util/Map;

    const-string v1, "EDGE_TYPE_DROP_SHADOW"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->p:Z

    .line 93
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->c:Landroid/content/SharedPreferences;

    .line 95
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 96
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y()Lcom/google/android/libraries/cast/companionlibrary/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    .line 97
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 378
    const-string v0, "#"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;
    .locals 5

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 284
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 285
    aget-object v4, v3, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    aget-object v0, v2, v0

    .line 289
    :goto_1
    return-object v0

    .line 284
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->p:Z

    if-nez v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->o:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->o:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_enabled:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 307
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->o:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1264
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->h:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1265
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->i:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1266
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->j:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1267
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->k:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1268
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->l:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1269
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->m:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1270
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->n:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 308
    if-eqz p3, :cond_0

    .line 309
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->o:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->d(Z)V

    goto :goto_0

    .line 303
    :cond_2
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_disabled:I

    goto :goto_1

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_scale:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 316
    iget-object v6, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->h:Landroid/preference/ListPreference;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_scale:I

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_font_scale_value_default:I

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_font_scale_names:I

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_font_scale_values:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 371
    :cond_4
    :goto_2
    if-eqz p3, :cond_0

    .line 372
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a()Lcom/google/android/gms/cast/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/gms/cast/j;)V

    goto/16 :goto_0

    .line 324
    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_family:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 325
    iget-object v6, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->i:Landroid/preference/ListPreference;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_family:I

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_font_family_value_default:I

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_font_family_names:I

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_font_family_values:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 333
    :cond_6
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 334
    iget-object v6, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->j:Landroid/preference/ListPreference;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_color:I

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_text_color_value_default:I

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_color_names:I

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_color_values:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 342
    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_opacity:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 343
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_opacity:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_text_opacity_value_default:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->k:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 348
    :cond_8
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_edge_type:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 349
    iget-object v6, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->l:Landroid/preference/ListPreference;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_edge_type:I

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_edge_type_value_default:I

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_edge_type_names:I

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_edge_type_values:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 357
    :cond_9
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 358
    iget-object v6, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->m:Landroid/preference/ListPreference;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_color:I

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_background_color_value_default:I

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_color_names:I

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_color_values:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 364
    :cond_a
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_opacity:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 365
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_opacity:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_background_opacity_value_default:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->n:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_edge_type:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EDGE_TYPE_NONE"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_background_color_value_default:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/cast/j;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/cast/j;->a(Landroid/content/Context;)Lcom/google/android/gms/cast/j;

    move-result-object v2

    .line 101
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a:Z

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 128
    :goto_0
    return-object v0

    .line 105
    :cond_0
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->f:Ljava/util/Map;

    .line 1149
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_family:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FONT_FAMILY_SANS_SERIF"

    invoke-virtual {v3, v4, v5}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/cast/j;->d(I)V

    .line 106
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/cast/j;->b(I)V

    .line 107
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->g:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/cast/j;->c(I)V

    .line 1159
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_scale:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.0"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 108
    invoke-virtual {v2, v0}, Lcom/google/android/gms/cast/j;->a(F)V

    .line 109
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z

    move-result v0

    .line 110
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v3

    .line 112
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 113
    const/4 v0, 0x3

    .line 119
    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/cast/j;->e(I)V

    .line 1171
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_color:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_text_color_value_default:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1182
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_opacity:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_text_opacity_value_default:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/cast/j;->a(I)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Edge is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 1214
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_opacity:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_background_opacity_value_default:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/cast/j;->b(I)V

    move-object v0, v2

    .line 128
    goto/16 :goto_0

    .line 114
    :cond_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    move v0, v1

    .line 115
    goto :goto_1

    .line 116
    :cond_2
    if-eqz v0, :cond_3

    .line 117
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final a(Landroid/preference/PreferenceScreen;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->o:Landroid/preference/CheckBoxPreference;

    .line 223
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_scale:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->h:Landroid/preference/ListPreference;

    .line 226
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_family:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->i:Landroid/preference/ListPreference;

    .line 229
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->j:Landroid/preference/ListPreference;

    .line 232
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_opacity:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->k:Landroid/preference/ListPreference;

    .line 235
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_edge_type:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->l:Landroid/preference/ListPreference;

    .line 238
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->m:Landroid/preference/ListPreference;

    .line 241
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_opacity:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->n:Landroid/preference/ListPreference;

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->p:Z

    .line 245
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_enabled:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 247
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_family:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 249
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_scale:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 251
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 253
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_opacity:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 255
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_edge_type:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 257
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 259
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_opacity:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 261
    return-void
.end method

.method public final b()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 133
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 136
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    .line 138
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_enabled:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 295
    return-void
.end method
