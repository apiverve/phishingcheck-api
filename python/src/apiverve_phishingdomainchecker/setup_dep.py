from setuptools import setup, find_packages

setup(
    name='apiverve_phishingdomainchecker',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Phishing Domain Checker is a phishing detection API that verifies whether a domain or URL appears in a comprehensive database of known phishing sites. Updated every 6 hours from two independent blocklists covering 570,000+ phishing domains.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/phishingcheck?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
