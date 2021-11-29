<resource schema="f357det">
  <meta name="title">F357 4FGL sources radio detections</meta>
  <meta name="creationDate">2021-04-13T12:02:03</meta>
  <meta name="description">
    The 4FGL-F357 detection.
  </meta>
  <meta name="creator.name">Bruzewski et al.</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">gamma-ray sources</meta>
  <meta name="subject">radio sources</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Gamma-ray</meta>
    <meta name="waveband">radio</meta>
  </meta>

  <meta name="source">
     Bruzewski et al., 2021, arXiv:2102.07397
  </meta>

  <table id="main" onDisk="True" mixin="//scs#q3cindex" primary="ID">
    <index columns="RA,Dec"/>
    
    <column name="ID" type="text"
        ucd="meta.id;meta.main"
        tablehead="ID" verbLevel="1"
        description="Object ID"
        required="True"/>

    <column name="Name" type="text"
      ucd="meta.id.cross;meta.main"
      tablehead="Name" verbLevel="1"
      description="Designation"
      required="True"/>

    <column name="RA" type="double precision"
      unit="deg" ucd="pos.eq.ra;meta.main"
      tablehead="RA" verbLevel="1"
      description="Right ascension"
      required="True"/>

    <column name="Dec" type="double precision"
      unit="deg" ucd="pos.eq.dec;meta.main"
      tablehead="Dec" verbLevel="1"
      description="Declination"
      required="True"/>

    <column name="RAErr" type="real"
      unit="deg" ucd="pos.eq.ra"
      tablehead="RAErr" verbLevel="1"
      description="Right Ascension error"
      required="True"/>

    <column name="DecErr" type="real"
      unit="deg" ucd="pos.eq.dec"
      tablehead="DerErr" verbLevel="1"
      description="Declination error"
      required="True"/>

   <column name="IntFlux_VLASS" type="real"
     unit="Jansky" ucd="phot.flux.density;em.radio.3-6GHz"
     tablehead="IntFlux_VLASS" verbLevel="1"
     description="Integrated flux of VLASS at 3GHz"
     required="True"/>
    
   <column name="IntFluxErr_VLASS" type="real"
     unit="Jansky" ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
     tablehead="IntFluxErr_VLASS" verbLevel="1"
     description="Error in integrated flux at 3GHz"
     required="True"/>

   <column name="IntFlux_D5GHZ" type="real"
     unit="Jansky" ucd="phot.flux.density;em.radio.3-6GHz"
     tablehead="IntFlux_D5GHZ" verbLevel="1"
     description="Integrated flux at 5GHz"
     required="True"/>
    
   <column name="IntFluxErr_D5GHZ" type="real"
     unit="Jansky" ucd="stat.error;phot.flux.density;em.radio.3-6GHz"
     tablehead="IntFluxErr_D5GHZ" verbLevel="1"
     description="Error in integrated flux at 5GHz"
     required="True"/>

   <column name="IsLowerLim_D5GHZ" type="integer"
     ucd="phot.flux.density;em.radio.3-6GHz"
     tablehead="IsLowerLim_D5GHZ" verbLevel="1"
     description="Given flux values may be treated as lower limits"
     required="True"/>

   <column name="IntFlux_D7GHZ" type="real"
     unit="Jansky" ucd="phot.flux.density;em.radio.6-12GHz"
     tablehead="IntFlux_D7GHZ" verbLevel="1"
     description="Integrated flux at 7GHz"
     required="True"/>
    
   <column name="IntFluxErr_D7GHZ" type="real"
     unit="Jansky" ucd="stat.error;phot.flux.density;em.radio.6-12GHz"
     tablehead="IntFluxErr_D7GHZ" verbLevel="1"
     description="Error in integrated flux at 7GHz"
     required="True"/>
     
   <column name="IsLowerLim_D7GHZ" type="integer"
     ucd="phot.flux.density;em.radio.6-12GHz"
     tablehead="IsLowerLim_D7GHZ" verbLevel="1"
     description="Given flux values may be treated as lower limits"
     required="True"/>

    <column name="Alpha" type="real"
      ucd="spect.index"
      tablehead="Alpha" verbLevel="1"
      description="Radio spectral slope"
      required="False"/>

    <column name="AlphaErr" type="real"
      ucd="stat.error;spect.index"
      tablehead="AlphaErr" verbLevel="1"
      description="Error in radio spectral slope"
      required="False"/>

    <column name="FermiName" type="text"
      ucd="meta.id.assoc"
      tablehead="Fermi_Name" verbLevel="1"
      description="Fermi 4FGL counterpart"
      required="True"/>


      
  </table>

  <data id="import">
    <sources>f357det.fits</sources>

    <fitsTableGrammar/>

    <make table="main">
      <rowmaker idmaps="*"/>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form">
    <meta name="title">4FGL-F357 detections</meta>
    <meta name="shortName">4FGL-F357-det cone</meta>
    <meta name="testQuery">
      <meta name="ra">20.02637</meta>
      <meta name="dec">21.98903</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="local"/>
    <publish render="form" sets="local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>
